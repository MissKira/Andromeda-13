/obj/machinery/portable_atmospherics/canister/ui_interact(mob/user, datum/tgui/ui)
	. = ..()

	var/client/client = user.client
	if (CONFIG_GET(flag/use_exp_tracking) && client && client.get_exp_living(TRUE) < 8 HOURS) // Player with less than 8 hours playtime is interacting with this canister.
		if(client.next_canister_grief_warning < world.time)
			var/turf/T = get_turf(src)
			client.next_canister_grief_warning = world.time + 15 MINUTES // Wait 15 minutes before alerting admins again
			message_admins("[span_adminhelp("АНТИ-ГРИФ:")] Новый игрок [ADMIN_LOOKUPFLW(user)] коснулся \a [src] на [ADMIN_VERBOSEJMP(T)].")
			client.touched_canister = TRUE
