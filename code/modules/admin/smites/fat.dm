/// Fattens the target
/datum/smite/fat
	name = "Откормить"

/datum/smite/fat/effect(client/user, mob/living/target)
	. = ..()
	target.set_nutrition(NUTRITION_LEVEL_FAT * 2)
