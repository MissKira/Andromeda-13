// Normal strength

/datum/round_event_control/meteor_wave
	name = "Meteor Wave: Normal"
	typepath = /datum/round_event/meteor_wave
	weight = 4
	min_players = 15
	max_occurrences = 3
	earliest_start = 25 MINUTES
	category = EVENT_CATEGORY_SPACE
	description = "A regular meteor wave."
	map_flags = EVENT_SPACE_ONLY

/datum/round_event/meteor_wave
	start_when = 6
	end_when = 66
	announce_when = 1
	var/list/wave_type
	var/wave_name = "normal"

/datum/round_event/meteor_wave/New()
	..()
	if(!wave_type)
		determine_wave_type()

/datum/round_event/meteor_wave/proc/determine_wave_type()
	if(!wave_name)
		wave_name = pick_weight(list(
			"normal" = 50,
			"threatening" = 40,
			"catastrophic" = 10))
	switch(wave_name)
		if("normal")
			wave_type = GLOB.meteors_normal
		if("threatening")
			wave_type = GLOB.meteors_threatening
		if("catastrophic")
			if(check_holidays(HALLOWEEN))
				wave_type = GLOB.meteorsSPOOKY
			else
				wave_type = GLOB.meteors_catastrophic
		if("meaty")
			wave_type = GLOB.meateors
		if("space dust")
			wave_type = GLOB.meteors_dust
		if("halloween")
			wave_type = GLOB.meteorsSPOOKY
		else
			WARNING("Wave name of [wave_name] not recognised.")
			kill()

/datum/round_event/meteor_wave/announce(fake)
	priority_announce("Обнаружены метеоры, идущие на столкновение со станцией.", "Предупреждение о метеоритах", ANNOUNCER_METEORS)

/datum/round_event/meteor_wave/tick()
	if(ISMULTIPLE(activeFor, 3))
		spawn_meteors(5, wave_type) //meteor list types defined in gamemode/meteor/meteors.dm

/datum/round_event_control/meteor_wave/threatening
	name = "Meteor Wave: Threatening"
	typepath = /datum/round_event/meteor_wave/threatening
	weight = 5
	min_players = 20
	max_occurrences = 3
	earliest_start = 35 MINUTES
	description = "A meteor wave with higher chance of big meteors."

/datum/round_event/meteor_wave/threatening
	wave_name = "threatening"

/datum/round_event_control/meteor_wave/catastrophic
	name = "Meteor Wave: Catastrophic"
	typepath = /datum/round_event/meteor_wave/catastrophic
	weight = 7
	min_players = 25
	max_occurrences = 3
	earliest_start = 45 MINUTES
	description = "A meteor wave that might summon a tunguska class meteor."

/datum/round_event/meteor_wave/catastrophic
	wave_name = "catastrophic"

/datum/round_event_control/meteor_wave/meaty
	name = "Meteor Wave: Meaty"
	typepath = /datum/round_event/meteor_wave/meaty
	weight = 2
	max_occurrences = 1
	description = "A meteor wave made of meat."

/datum/round_event/meteor_wave/meaty
	wave_name = "meaty"

/* BUBBER EDIT REMOVAL BEGIN - moved to modular_zubbers/code/modules/events/meteor_wave.dm
/datum/round_event/meteor_wave/meaty/announce(fake)
	priority_announce("Meaty ores have been detected on collision course with the station.", "Oh crap, get the mop.", ANNOUNCER_METEORS)
*/// BUBBER EDIT REMOVAL FINISH

/datum/round_event_control/meteor_wave/dust_storm
	name = "Major Space Dust"
	typepath = /datum/round_event/meteor_wave/dust_storm
	weight = 14
	description = "The station is pelted by sand."
	earliest_start = 15 MINUTES
	min_wizard_trigger_potency = 4
	max_wizard_trigger_potency = 7

/datum/round_event/meteor_wave/dust_storm
	announce_chance = 85
	wave_name = "space dust"

/datum/round_event/meteor_wave/dust_storm/announce(fake)
	var/list/reasons = list()

	reasons += "[station_name()] проходит через облако обломков, ожидаются незначительные повреждения\
		внешнему оборудованию и обшивке."

	reasons += "Отдел сверхвооружения Нанотразен испытывает новый прототип \
		[pick("оружия","артиллерии","взрывчатки","крейсера","\[ОТРЕДАКТИРОВАНО\]")], \
		ожидаются легкие обломки."

	reasons += "На соседней станции в вас бросают камни. (Возможно, они \
		устали от ваших сообщений.)"

	reasons += "Орбита станции [station_name()] проходит через облако остатков астероида \
		добычи. Следует ожидать незначительных повреждений корпуса."

	reasons += "Крупный метеороид, идущий на перехват с [station_name()], был разрушен. \
		Остатки обломков могут повлиять на внешний вид станции."

	reasons += "[station_name()] попала в особенно сложный участок пространства. \
		Пожалуйста, обратите внимание на турбулентность или повреждения от обломков."

	priority_announce(pick(reasons), "Предупреждение о столкновении")
