/// Действия с ртом

//-// -Rewokin_fun_comment //-//
// Кире нравится доминировать?~
// Тише будь, Революция красной патриархии

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, дополнение ЕРП контента.
/datum/interaction/lewd/facefuck_vagina
	name = "Тереться о лицо (Вагина)"
	description = "Погладьтесь своей Киской о чье-нибудь лицо."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Оргазмирует на лицо %TARGET%",
			"Вжавшись в влажном движении, сквиртует на лицо %TARGET%",
			"Нежно протеревшись, содрагается, пачкая лицо %TARGET% своими соками",
			"Покрывает лицо %TARGET% своими любовными выделениями"
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"Вы прижимаетесь киской к лицу %TARGET% обильно оргазмируя на него",
			"Вы вжимаетесь в выпаде, сквиртуя на лицо %TARGET%",
			"Вы покрываете лицо %TARGET% сладкими соками"
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_USER = list(
			"%USER% Кончает на ваше лицо сладкими соками",
			"%USER% Вжимается в вас молниеносным движением, и оргазмирует",
			"%USER% Прижимается к вам как можно сильнее, и покрывает ваше лицо соками"
		)
	)
	message = list(
		"Втирается своей киской в лицо %TARGET%.",
		"Захватывает затылок %TARGET% надавливая им на свою киску.",
		"Катается своей киской по языку %TARGET%.",
		"Просовывает рот %TARGET% между своих ног.",
		"Смотрит %TARGET% в глаза, прежде чем вжать в свою киску.",
		"Покачивает бедрами и извивается, вдавливая свою кису в лицо%TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	user_arousal = 8
	target_pleasure = 0
	target_arousal = 3

/datum/interaction/lewd/facefuck_penis
	name = "Трахнуть в рот (Член)"
	description = "Выеби кого-нибудь прямо в рот."
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"Грубо трахает %TARGET% в ротик.",
		"Заталкивает свой член в горло %TARGET%.",
		"Надавливает на язык %TARGET% своим членом, пока не услышит легкий рвотный звук.",
		"Захватывает голову %TARGET% и притягивает к своему члену, прежде чем грубо проникнуть в рот.",
		"Смотрит в глаза %TARGET% пока вставляет свой член в жаждущий рот %TARGET%!",
		"Сильно двигает бедрами, толкаясь в рот %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 5
	target_pleasure = 0
	user_arousal = 8
	target_arousal = 3

//-// -Rewokin_fun_comment //-//
// Гок-гок-гок

/datum/interaction/lewd/throatfuck
	name = "Глубокий Оральный Секс (Член)"
	description = "Выеби чье-нибудь горло орально и грубо. (Опасно!: Вызывает удушение вплоть до смертельного)"
	interaction_requires = list(INTERACTION_REQUIRE_TARGET_MOUTH)
	user_required_parts = list(ORGAN_SLOT_PENIS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_USER = CLIMAX_PENIS)
	cum_target = list(CLIMAX_POSITION_USER = CLIMAX_TARGET_MOUTH)
	message = list(
		"Жестоко заталкивает свой член в горло %TARGET% заставляя задыхаться.",
		"Душит %TARGET% своим членом, глубоко входя в рот по самые яйца.",
		"Грубо входит и выходит изо рта %TARGET% пока яйца шлепаются о лицо."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/oral1.ogg',
		'modular_zzplurt/sound/interactions/oral2.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 7
	target_pleasure = 0
	user_arousal = 10
	target_arousal = 2
	target_pain = 5

/datum/interaction/lewd/throatfuck/post_interaction(mob/living/user, mob/living/target)
	. = ..()
	var/stat_before = target.stat
	target.adjustOxyLoss(3)
	if(target.stat == UNCONSCIOUS && stat_before != UNCONSCIOUS)
		message = list("%TARGET% Вырубается от члена %USER% в своем горлышке") //-// -Rewokin_fun_comment //-//	>Reason for disconnection = xyi v gorle
