/// Действия пальцем

//-// -Rewokin_fun_comment //-//
// Фингир, нот фистинг! Перепутать легко, избавиться от последствий тяжело. sticker: the_view_at_two_thousand_yards

/// ADD ANDROMEDA-13 (@ms_kira): Перевод, ОГРОМНОЕ дополнение ЕРП контента.
/datum/interaction/lewd/finger
	name = "Фингеринг киски"
	description = "Засунь свои пальцы в чью-нибудь Кису. (Это очень заводит, Это приятно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_VAGINA = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_VAGINA)
	cum_target = list(CLIMAX_POSITION_TARGET = null)
	additional_details = list(INTERACTION_FILLS_CONTAINERS)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Содрагаясь оргазмирует на пальчики %USER%.",
			"%TARGET% Дрожа сквиртует прямо на пальцы %USER%.",
			"%TARGET% Извиваясь от удовольствия, стреляет сладкими соками на пальчики %USER%.",
			"%TARGET% Чуть согнувшись, пачкает обильным оргазмом пальцы %USER%.",
			"%TARGET% Сводит свои ножки вместе, прежде чем запачкать пальчики %USER% в своей киске.",
			"%TARGET% Дрогнув и слегка встав на носочки, обильно оргазмирует на пальцы %USER%.",
			"%TARGET% Вжимаясь в пальцы %USER% сквиртует на них.",
			"%TARGET% Нежно дрожа и елозя на пальчиках %USER% покрывает их оргазменными соками.",
			"%TARGET% Покрывает сладкими соками пальчики %USER%."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Вы прижимаетесь киской к пальчикам %USER% обильно оргазмируя на них.",
			"Задрожав, вы отдаете пальчикам %USER% свою волну удовольствия.",
			"Нежно дрожа, вы оргазмируете на пальчики %USER%.",
			"Неумолимо подрагивая от ощущений с вашей целкой, вы наконец сквиртуете на пальчики %USER%.",
			"Поджав свои ножки вместе, вы стреляете сладкими соками на ладошку %USER%.",
			"В момент, вы вжимаетесь киской на пальцы %USER% сквиртуя.",
			"Вы вжимаетесь в следующей же миг на пальчики %USER% активно стреляя сладкими соками.",
			"Вы покрываете пальчики %USER% сладкими соками в сочном оргазме."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Оргазмирует на ваши пальчики своими соками.",
			"%TARGET% Судорожно содрагается от ваших движений, тут же испуская сладкое удовольствие на ваши пальчики.",
			"%TARGET% Нежно дрожит, прежде чем сквиртить на ваши пальцы.",
			"%TARGET% Сжимает свои ножки вместе, прежде чем дрогнуть и обильно оргазмировать под себя, и на ваши пальчики.",
			"%TARGET% Вжимается своей киской в ваши пальцы, прежде чем бурно сквиртить.",
			"%TARGET% Неумолимо подрагивая и сгинаясь, стреляет сладкими соками на ваши пальцы.",
			"%TARGET% Вжимается в ваши пальцы киской, и бурно оргазмирует.",
			"%TARGET% Прижимается к вашим пальчикам, насаживаясь посильнее, и покрывает вашу ладошку сладкими выстрелами из целки."
		)
	)
	message = list(
		"Проводит пальцем по Кисе %TARGET%.",
		"Плавно проходит пальцем по целке %TARGET%.",
		"Вздрачивает пальцем клитор %TARGET%.",
		"Нежно наглаживает вагину %TARGET%.",
		"Обводит двумя пальчиками клитор %TARGET% и гладит его вращающимися движениями.",
		"Погладив клитор, проходится двумя пальцами вдоль киски %TARGET%.",
		"Сдавливает клитор %TARGET% пальцами.",
		"Круговыми движениями вздрачивает кису %TARGET%.",
		"Наглаживает с небольшим усилием вагину %TARGET%.",
		"Входит пальцем в влагалище %TARGET% протискиваясь во-внутрь.",
		"Поглаживая влагалище изнутри, протискивает второй палец во-внутрь киски %TARGET%.",
		"Настойчиво вздрачивает киску %TARGET% толкаясь двумя пальцами внутри.",
		"Раздвигает половые губы киски %TARGET% вызывая легкие подрагивания.",
		"Отодвинув половую губу киски %TARGET% играется пальцем с целкой.",
		"Фингерит %TARGET% прямо в пизду.",
		"Тычет пальцем глубоко внутрь киски %TARGET% проталкиваясь.",
		"Вздрачивает клитор %TARGET% пальчиками.",
		"Фингерит пизду %TARGET%.",
		"Пальчиком раздразнивает влагалище %TARGET%.",
		"Грубенько возится двумя пальчиками во влагалище %TARGET%.",
		"Толкает пальчики внутри влагалища %TARGET%.",
		"Нежно растирает внешнюю часть влагалища %TARGET% надрачивая его.",
		"Играется с половыми губами %TARGET% теребя киску.",
		"Фингерит киску %TARGET%.",
		"Играет пальчиками с целкой %TARGET%.",
		"Фингерит целку %TARGET%.",
		"Толкает целку %TARGET% средним пальцем изнутри.",
		"Грубо фингерит кисоньку %TARGET%.",
		"Ковыряется средним пальцем в кисе %TARGET% дразнясь изнутри.",
		"Грубо фингерит пизденку %TARGET%.",
		"Неаккуратно сдавливает киску %TARGET% в попытке фингеринга.",
		"Неаккуратно ковыряется пальцем в пизде %TARGET%.",
		"Вздрачивает целку %TARGET% крючковым захватом пальцев.",
		"Проталкивает два пальца как можно глубже в пизду %TARGET%.",
		"Мягко шлепнув пизду %TARGET% вонзает в неё пальчики, приступая к фингерингу."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 5
	user_arousal = 5
	target_arousal = 6
	target_pain = 0

/datum/interaction/lewd/finger/act(mob/living/user, mob/living/target)
	var/list/original_messages = message.Copy()
	var/obj/item/liquid_container

	var/obj/item/cached_item = user.get_active_held_item()
	if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
		liquid_container = cached_item
	else
		cached_item = user.pulling
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item

	if(liquid_container)
		interaction_modifier_flags |= INTERACTION_OVERRIDE_FLUID_TRANSFER
		message = list(
			"Трахает пальчиком киску %TARGET% над [liquid_container].",
			"Заглаживает пальчиком клитор %TARGET% над [liquid_container].",
			"Вздрачивает крючковым захватом киску %TARGET% прямо над [liquid_container].",
			"Вздрачивает захватов влагалище %TARGET% прямо над [liquid_container].",
			"Играет с влагалищем %TARGET% заставляя то течь прямо над [liquid_container].",
			"Вздрачивает кисоньку %TARGET% удерживая под [liquid_container].",
			"Нежно толкается пальчиками в киску %TARGET% держа под [liquid_container].",
			"Дрочит кису %TARGET% специально для [liquid_container].",
			"Грубо тискает кисоньку %TARGET% для [liquid_container].",
			"Гладит клитор %TARGET% заставляя тот течь для [liquid_container].",
			"Агрессивно наглаживает киску %TARGET% придерживая под [liquid_container]."
		)
	. = ..()
	message = original_messages
	interaction_modifier_flags &= ~INTERACTION_OVERRIDE_FLUID_TRANSFER

/datum/interaction/lewd/finger/post_climax(mob/living/cumming, mob/living/came_in, position)
	if(interaction_modifier_flags & INTERACTION_OVERRIDE_FLUID_TRANSFER)
		var/obj/item/liquid_container

		var/obj/item/cached_item = came_in.get_active_held_item()
		if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
			liquid_container = cached_item
		else
			cached_item = came_in.pulling
			if(istype(cached_item) && cached_item.is_refillable() && cached_item.is_drainable())
				liquid_container = cached_item

		if(liquid_container)
			var/obj/item/organ/genital/vagina/vagina = cumming.get_organ_slot(ORGAN_SLOT_VAGINA)
			if(vagina)
				vagina.transfer_internal_fluid(liquid_container.reagents, vagina.internal_fluid_count)

	. = ..()

/datum/interaction/lewd/fingerass
	name = "Фингеринг попки"
	description = "Зафингирите чью-нибудь попку. (Это заводит, Немного приятно, Немного больно)"
	interaction_requires = list(INTERACTION_REQUIRE_SELF_HAND)
	target_required_parts = list(ORGAN_SLOT_ANUS = REQUIRE_GENITAL_EXPOSED)
	cum_genital = list(CLIMAX_POSITION_TARGET = CLIMAX_BOTH)
	cum_message_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Содрагаясь оргазмирует под себя.",
			"%TARGET% Дрожа сквиртует под себя от удовольствия.",
			"%TARGET% Извиваясь от удовольствия, стреляет сладкими соками на пол.",
			"%TARGET% Чуть согнувшись, пачкает обильным оргазмом все под собой.",
			"%TARGET% Сводит свои ножки вместе, прежде чем запачкать свои ножки сладкими соками.",
			"%TARGET% Дрогнув и слегка встав на носочки, обильно оргазмирует под себя и на свои ножки.",
			"%TARGET% Вжимаясь в пальцы %USER% сквиртует под себя.",
			"%TARGET% Нежно дрожа и елозя на пальчиках %USER% покрывает все под собой оргазменными соками.",
			"%TARGET% Покрывает сладкими соками пространство под собой."
		)
	)
	cum_self_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"Вы прижимаетесь попкой к пальчикам %USER% обильно оргазмируя под себя.",
			"Задрожав, вы отдаете пальчикам %USER% волну подрагиваний, образуя лужицу под собой.",
			"Нежно дрожа, вы оргазмируете от пальчиков %USER% под себя.",
			"Неумолимо подрагивая от ощущений с вашей попкой, вы наконец сквиртуете на пол.",
			"Поджав свои ножки вместе, вы стреляете сладкими соками на свои ножки под себя.",
			"Вы вжимаетесь жопкой на пальцы %USER% сквиртуя.",
			"Вы вздрагиваете елозя на пальцах %USER% активно стреляя сладкими соками на пол.",
			"Вы прижимаетесь попкой к пальцам %USER% бурно оргазмируя под себя."
		)
	)
	cum_partner_text_overrides = list(
		CLIMAX_POSITION_TARGET = list(
			"%TARGET% Оргазмирует под себя от ваших пальцев в попе.",
			"%TARGET% Судорожно содрагается от ваших движений в своей попке, тут же испуская соки под себя.",
			"%TARGET% Нежно дрожит, прежде чем сквиртить под себя от пальцев в попке.",
			"%TARGET% Сжимает свои ножки вместе, прежде чем дрогнуть и обильно оргазмировать под себя от пальчиков в попке.",
			"%TARGET% Вжимается своим анальным колечком в ваши пальцы, прежде чем бурно сквиртить.",
			"%TARGET% Неумолимо подрагивая и сгинаясь, стреляет сладкими соками под себя.",
			"%TARGET% Вжимается в ваши пальцы попкой, и бурно оргазмирует.",
			"%TARGET% Прижимается к вашим пальчикам, насаживаясь посильнее, и покрывает пол под собой сладкими соками."
		)
	)
	message = list(
		"Обводит пальцем анальчик %TARGET%.",
		"Двумя пальцами разводит края анальчика %TARGET% в стороны.",
		"Вводит палец в анальное колечко %TARGET%.",
		"Фингерит анальное колечко %TARGET%.",
		"Игриво толкается пальчиками внутрь попки %TARGET%.",
		"Крючком из пальчиков поглаживает спинку %TARGET% прямо изнутри попки.",
		"Фингерит попку %TARGET% жадко толкая пальцы внутрь.",
		"Жадно растягивает анальное колечко %TARGET%",
		"Играет с задним проходом %TARGET% проталкивая средний палец во-внутрь",
		"Вставляет свои пальчики как можно глубже в попку %TARGET%.",
		"Грубовато растягивает анальный проход %TARGET% проталкивающимися движениями пальцев.",
		"Крючковым образом играется с анальным проходом %TARGET%.",
		"Резкими движениями углубляется пальцами в попку %TARGET%.",
		"Вдалблиывается пальцами в анальный проходик %TARGET%."
	)
	sound_possible = list(
		'modular_zzplurt/sound/interactions/champ_fingering.ogg'
	)
	sound_range = 1
	sound_use = TRUE
	user_pleasure = 0
	target_pleasure = 3
	user_arousal = 4
	target_arousal = 6
	target_pain = 3

