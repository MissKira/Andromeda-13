/**
 * An event which decreases the station target temporarily, causing the inflation var to increase heavily.
 *
 * Done by decreasing the station_target by a high value per crew member, resulting in the station total being much higher than the target, and causing artificial inflation.
 */
/datum/round_event_control/market_crash
	name = "Market Crash"
	typepath = /datum/round_event/market_crash
	weight = 10
	category = EVENT_CATEGORY_BUREAUCRATIC
	description = "Temporarily increases the prices of vending machines."

/datum/round_event/market_crash
	/// This counts the number of ticks that the market crash event has been processing, so that we don't call vendor price updates every tick, but we still iterate for other mechanics that use inflation.
	var/tick_counter = 1

/datum/round_event/market_crash/setup()
	start_when = 1
	end_when = rand(100, 50)
	announce_when = 2

/datum/round_event/market_crash/announce(fake)
	var/list/poss_reasons = list("the alignment of the moon and the sun",\
		"некоторые рискованные результаты на рынке жилья",\
		"безвременное падение команды B.E.P.I.S.",\
		"speculative TerraGov grants backfiring",\
		"сильно преувеличенные сообщения о том, что бухгалтерский персонал Нанотразена был \"уволен\"",\
		"\"большие инвестиции\" в \"несгораемые токены\" сделанные \"идиотом\"",\
		"несколько рейдов от агентов кооператива Тигр",\
		"нехватка поставок",\
		"безвременное падение социальной сети \"Нанотразен+\"",\
		"неудачный успех социальной сети \"Нанотразен+\"",\
		"эээ, не повезло, наверное"
	)
	var/reason = pick(poss_reasons)
	priority_announce("В связи с [reason], цены на станции будут повышены на короткий период.", "Отдел бухгалтерского учета", ANNOUNCER_MARKET_CRASH) // SPLURT EDIT - ORIGINAL: priority_announce("Due to [reason], prices for on-station vendors will be increased for a short period.", "Nanotrasen Accounting Division")

/datum/round_event/market_crash/start()
	. = ..()
	SSeconomy.update_vending_prices()
	SSeconomy.price_update()
	ADD_TRAIT(SSeconomy, TRAIT_MARKET_CRASHING, MARKET_CRASH_EVENT_TRAIT)

/datum/round_event/market_crash/end()
	. = ..()
	REMOVE_TRAIT(SSeconomy, TRAIT_MARKET_CRASHING, MARKET_CRASH_EVENT_TRAIT)
	SSeconomy.price_update()
	SSeconomy.update_vending_prices()
	priority_announce("Цены на станции стабилизировались.", "Отдел бухгалтерского учета")

/datum/round_event/market_crash/tick()
	. = ..()
	tick_counter = tick_counter++
	SSeconomy.inflation_value = 5.5*(log(activeFor+1))
	if(tick_counter == 5)
		tick_counter = 1
		SSeconomy.update_vending_prices()
