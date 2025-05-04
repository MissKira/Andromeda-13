/datum/component/carrier_communicator
	/// What carrier room is the parent mob currently trying to communicate with?
	var/datum/weakref/target_carrier
	/// Is the mob trying to communicate with the carrier they are inside?
	var/carried_mob = FALSE

/datum/component/carrier_communicator/New()
	. = ..()
	var/mob/living/parent_mob = parent
	if(!istype(parent_mob))
		return COMPONENT_INCOMPATIBLE

	add_verb(parent_mob, list(/mob/living/proc/carrier_say, /mob/living/proc/carrier_emote))

/datum/component/carrier_communicator/Destroy(force)
	var/mob/living/holder = parent
	if(!istype(holder))
		return FALSE

	remove_verb(holder, list(/mob/living/proc/carrier_say, /mob/living/proc/carrier_emote))
	return ..()

/// Prompts the parent mob to send a say message to the soulcatcher. Returns False if no soulcatcher or message could be found.
/mob/living/proc/carrier_say()
	set name = "Носителя Say"
	set category = "IC"
	set desc = "Отправьте сообщение «Скажи» в текущую целевую комнату носителя."

	var/datum/carrier_room/room_to_send_to = get_current_carrier_room()
	if(!istype(room_to_send_to))
		to_chat(src, span_warning("У вас нет оператора, которому можно отправлять сообщения!"))
		return FALSE

	var/message_to_send = tgui_input_text(usr, "Введите сообщение, которое вы хотите отправить", "Носитель", multiline = TRUE)
	if(!message_to_send)
		return FALSE

	var/message_sender = room_to_send_to.outside_voice
	var/datum/component/carrier_user/carrier_user_component = GetComponent(/datum/component/carrier_user)
	var/datum/component/carrier_communicator/communicator_component = GetComponent(/datum/component/carrier_communicator)
	if(istype(carrier_user_component) && istype(communicator_component) && communicator_component.carried_mob)
		message_sender = carrier_user_component.name

	room_to_send_to.send_message(message_to_send, message_sender)
	return TRUE

/// Prompts the parent mob to send a emote to the soulcatcher. Returns False if no soulcatcher or emote could be found.
/mob/living/proc/carrier_emote()
	set name = "Носителя Me"
	set category = "IC"
	set desc = "Отправьте эмоцию в комнату, на которую в данный момент нацелен носитель."

	var/datum/carrier_room/room_to_send_to = get_current_carrier_room()
	if(!istype(room_to_send_to))
		to_chat(src, span_warning("У вас нет носителя, которому можно отправить эмодзи!"))
		return FALSE

	var/message_to_send = tgui_input_text(usr, "Введите эмоцию, которую вы хотите отправить", "Душегуб", multiline = TRUE)
	if(!message_to_send)
		return FALSE

	var/message_sender = room_to_send_to.outside_voice
	var/datum/component/carrier_user/carrier_user_component = GetComponent(/datum/component/carrier_user)
	var/datum/component/carrier_communicator/communicator_component = GetComponent(/datum/component/carrier_communicator)
	if(istype(carrier_user_component) && istype(communicator_component) && communicator_component.carried_mob)
		message_sender = carrier_user_component.name

	room_to_send_to.send_message(message_to_send, message_sender, TRUE)
	return TRUE

/// Attempts to find and return the current carrier room the mob is using.
/mob/living/proc/get_current_carrier_room()
	var/datum/component/carrier_communicator/communicator_component = GetComponent(/datum/component/carrier_communicator)
	if(!communicator_component)
		return FALSE

	var/datum/component/carrier/master_carrier = communicator_component.target_carrier?.resolve()
	if(!istype(master_carrier))
		return FALSE

	var/datum/carrier_room/target_room = master_carrier.targeted_carrier_room
	var/datum/component/carrier_user/carrier_user_component = GetComponent(/datum/component/carrier_user)
	if(communicator_component.carried_mob && istype(carrier_user_component))
		target_room = carrier_user_component.current_room.resolve()
		if(!istype(target_room))
			return FALSE

	if(!Adjacent(master_carrier.parent))
		communicator_component.target_carrier = null
		return FALSE

	return target_room
