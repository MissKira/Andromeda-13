///The storyteller datum. He operates with the SSgamemode data to run events
/datum/storyteller
	/// Name of our storyteller.
	/// Имя нашего рассказчика.
	var/name = "Badly coded storyteller"
	/// Description of our storyteller.
	/// Описание нашего рассказчика.
	var/desc = "Report this to the coders."
	/// Text that the players will be greeted with when this storyteller is chosen.
	/// Текст, которым будут приветствовать игроков, когда будет выбран этот рассказчик.
	var/welcome_text = "The storyteller has been selected. Get ready!"
	/// This is the multiplier for repetition penalty in event weight. The lower the harsher it is
	/// Это множитель штрафа за повторение в весе события. Чем ниже, тем строже.
	var/event_repetition_multiplier = 0.6
	/// Multipliers for starting points. // TODO - Rewrite into some variation
	/// Множители для начальных точек. // TODO - Переписать в какую-нибудь вариацию
	var/list/starting_point_multipliers = list(
		EVENT_TRACK_MUNDANE = 1,
		EVENT_TRACK_MODERATE = 1,
		EVENT_TRACK_MAJOR = 1,
		EVENT_TRACK_CREWSET = 1,
		EVENT_TRACK_GHOSTSET = 1
		)
	/// The datum containing track size data
	/// Точка отсчета, содержащая данные о размере дорожки
	var/datum/storyteller_data/tracks/track_data = /datum/storyteller_data/tracks

	/// Percentual variance in the budget of roundstart points.
	/// Процентное отклонение в бюджете точек начала раунда.
	var/roundstart_points_variance = 30

	/// Multipliers of weight to apply for each tag of an event.
	/// Множители веса, применяемые к каждой метке события.
	var/list/tag_multipliers

	/// Percentual variance in cost of the purchased events. Effectively affects frequency of events
	/// Процентное различие в стоимости закупаемых мероприятий. Эффективно влияет на частоту проведения мероприятий
	var/cost_variance = 30

	/// Whether the storyteller guaranteed a crewset roll (crew antag) on roundstart. (Still needs to pass pop check)
	/// Гарантировал ли рассказчик бросок crewset (crew antag) на старте раунда. (Все еще нужно пройти проверку на поп)
	var/guarantees_roundstart_crewset = TRUE

	/// Whether the storyteller has the distributions disabled. Important for ghost storytellers
	/// Отключены ли у рассказчика распределения. Важно для рассказчиков-призраков
	var/disable_distribution = FALSE

	/// Whether people can vote for the storyteller
	/// Могут ли люди голосовать за рассказчика
	var/votable = TRUE
	/// If defined, will need a minimum of population to be votable
	/// Если определено, то для голосования необходимо минимальное количество населения
	var/population_min
	/// If defined, it will not be votable if exceeding the population
	/// Если он определен, то не будет голосовать, если превысит численность населения
	var/population_max
	/// The antag divisor, the higher it is the lower the antag cap gets. Basically means "for every antag_divisor crew, spawn 1 antag".
	/// Делитель антага, чем он выше, тем ниже становится лимит антага. В основном это означает «на каждый экипаж с коэффициентом antag_divisor порождается 1 антаг».
	var/antag_divisor = 8

	/// Two tellers of the same intensity group can't run in 2 consecutive rounds
	/// Два рассказчика одной группы интенсивности не могут участвовать в двух раундах подряд
	var/storyteller_type = STORYTELLER_TYPE_ALWAYS_AVAILABLE

/datum/storyteller/process(delta_time)
	if(disable_distribution)
		return
	add_points(delta_time)
	handle_tracks()

/datum/storyteller/vv_edit_var(var_name, var_value) // Appends any name changes with the original storyteller
	. = ..()
	if(var_name == NAMEOF(src, name))
		name = "[var_value] ([initial(name)])"

/// Add points to all tracks while respecting the multipliers.
/datum/storyteller/proc/add_points(delta_time)
	var/datum/controller/subsystem/gamemode/mode = SSgamemode
	for(var/track in mode.event_track_points)
		var/point_gain = delta_time
		mode.event_track_points[track] += point_gain
		mode.last_point_gains[track] = point_gain

/**
 * Goes through every track of the gamemode and checks if it passes a threshold to buy an event, if does, buys one.
 *
 * Additionally updates static ui data once it's done incase event track data has changed
 */
/datum/storyteller/proc/handle_tracks()
	. = FALSE //Has return value for the roundstart loop
	var/datum/controller/subsystem/gamemode/mode = SSgamemode
	for(var/track in mode.event_track_points)
		var/points = mode.event_track_points[track]
		if(points >= mode.point_thresholds[track] && find_and_buy_event_from_track(track))
			. = TRUE
	mode.update_static_data_for_all_viewers()

/// Find and buy a valid event from a track.
/datum/storyteller/proc/find_and_buy_event_from_track(track)
	. = FALSE
	var/datum/round_event_control/picked_event
	if(SSgamemode.forced_next_events[track]) //Forced event by admin
		/// Dont check any prerequisites, it has been forced by an admin
		picked_event = SSgamemode.forced_next_events[track]
		SSgamemode.forced_next_events -= track
	else
		var/player_pop = SSgamemode.get_correct_popcount()
		var/pop_required = SSgamemode.min_pop_thresholds[track]
		if(player_pop < pop_required)
			message_admins("Storyteller failed to pick an event for track of [track] due to insufficient population. (required: [pop_required] active pop for [track]. Current: [player_pop])")
			log_admin("Storyteller failed to pick an event for track of [track] due to insufficient population. (required: [pop_required] active pop for [track]. Current: [player_pop])")
			SSgamemode.event_track_points[track] *= TRACK_FAIL_POINT_PENALTY_MULTIPLIER
			return
		calculate_weights(track)
		var/list/valid_events = list()
		// Determine which events are valid to pick
		for(var/datum/round_event_control/event as anything in SSgamemode.event_pools[track])
			if(isnull(event))
				continue
			if(event.can_spawn_event(player_pop))
				valid_events[event] = event.calculated_weight
				if(event.roundstart)
					log_dynamic("[event] added to roundstart event pool with calculated weight [event.calculated_weight] and tags [english_list(event.tags)].")
			else if(event.roundstart)
				log_dynamic("[event] did not meet inclusion criteria, skipped.")
		///If we didn't get any events, remove the points inform admins and dont do anything
		if(!length(valid_events))
			message_admins("Storyteller failed to pick an event for track of [track].")
			log_admin("Storyteller failed to pick an event for track of [track].")
			SSgamemode.event_track_points[track] *= TRACK_FAIL_POINT_PENALTY_MULTIPLIER
			return
		picked_event = pick_weight(valid_events)
		if(!picked_event)
			message_admins("WARNING: Storyteller picked a null from event pool. Aborting event roll.")
			log_admin("WARNING: Storyteller picked a null from event pool. Aborting event roll.")
			stack_trace("WARNING: Storyteller [src] picked a null from event pool at track [track].")
			return
	buy_event(picked_event, track)
	. = TRUE

/// Find and buy a valid event from a track.
/datum/storyteller/proc/buy_event(datum/round_event_control/bought_event, track)
	var/datum/controller/subsystem/gamemode/mode = SSgamemode
	// Perhaps use some bell curve instead of a flat variance?
	var/total_cost = bought_event.cost * mode.point_thresholds[track]
	if(!bought_event.roundstart)
		total_cost *= (1 - (rand(0, cost_variance) / 100)) //Apply cost variance if not roundstart event
	mode.event_track_points[track] = max(0, mode.event_track_points[track] - total_cost)
	message_admins("Storyteller purchased and triggered [bought_event] event, on [track] track, for [total_cost] cost.")
	log_admin("Storyteller purchased and triggered [bought_event] event, on [track] track, for [total_cost] cost.")
	if(bought_event.roundstart)
		log_dynamic("Storyteller selected roundstart event [bought_event] based on weighted selection!")
		mode.TriggerEvent(bought_event)
	else
		mode.schedule_event(bought_event, (rand(3, 4) MINUTES), total_cost)

/**
 * Calculates the weights of the events from a passed track.
 */
/datum/storyteller/proc/calculate_weights(track)
	for(var/datum/round_event_control/event as anything in SSgamemode.event_pools[track])
		var/weight_total = event.weight
		/// Apply tag multipliers if able
		if(tag_multipliers)
			for(var/tag in tag_multipliers)
				if(tag in event.tags)
					weight_total *= tag_multipliers[tag]
		/// Apply occurence multipliers if able
		var/occurences = event.get_occurences()
		if(occurences)
			///If the event has occured already, apply a penalty multiplier based on amount of occurences
			weight_total -= event.reoccurence_penalty_multiplier * weight_total * (1 - (event_repetition_multiplier ** occurences))
		/// Write it
		event.calculated_weight = round(weight_total, 1)

/datum/storyteller/proc/calculate_weights_all()
	var/datum/controller/subsystem/gamemode/mode = SSgamemode
	for(var/track in mode.event_tracks)
		calculate_weights(track)
	mode.update_static_data_for_all_viewers()
