/// Throws a fireball down at the target
/datum/smite/fireball
	name = "Огненный шар"

/datum/smite/fireball/effect(client/user, mob/living/target)
	. = ..()
	new /obj/effect/temp_visual/target(get_turf(target))
