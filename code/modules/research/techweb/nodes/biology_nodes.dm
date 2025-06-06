/datum/techweb_node/bio_scan
	id = TECHWEB_NODE_BIO_SCAN
	display_name = "Биологический Скан"
	description = "Передовые технологии анализа состояния здоровья пациента и состава реагентов обеспечивают точную диагностику и лечение в медицинском отсеке."
	prereq_ids = list(TECHWEB_NODE_MEDBAY_EQUIP)
	design_ids = list(
		"healthanalyzer",
		"autopsyscanner",
		"genescanner",
		"medical_kiosk",
		"chem_master",
		"ph_meter",
		"scigoggles",
		"mod_reagent_scanner",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	announce_channels = list(RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/cytology
	id = TECHWEB_NODE_CYTOLOGY
	display_name = "Цитология"
	description = "Исследования в области клеточной биологии направлены на выращивание конечностей и разнообразных организмов из клеток."
	prereq_ids = list(TECHWEB_NODE_BIO_SCAN)
	design_ids = list(
		"limbgrower",
		"pandemic",
		"vatgrower",
		"petri_dish",
		"swab",
		"biopsy_tool",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/xenobiology
	id = TECHWEB_NODE_XENOBIOLOGY
	display_name = "Ксенобиология"
	description = "Исследование нечеловеческой биологии, раскрывающее секреты внеземных форм жизни и их уникальных биологических процессов."
	prereq_ids = list(TECHWEB_NODE_CYTOLOGY)
	design_ids = list(
		"xenobioconsole",
		"slime_scanner",
		"limbdesign_ethereal",
		"limbdesign_felinid",
		"limbdesign_lizard",
		"limbdesign_plasmaman",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	discount_experiments = list(/datum/experiment/scanning/cytology/slime = TECHWEB_TIER_3_POINTS)

/datum/techweb_node/gene_engineering
	id = TECHWEB_NODE_GENE_ENGINEERING
	display_name = "Генная Инженерия"
	description = "Исследования сложных методов манипулирования ДНК, позволяющих изменять генетические характеристики человека для раскрытия особых способностей и улучшений."
	prereq_ids = list(TECHWEB_NODE_SELECTION, TECHWEB_NODE_XENOBIOLOGY)
	design_ids = list(
		"dnascanner",
		"scan_console",
		"dna_disk",
		"dnainfuser",
		"mod_dna_lock",
		"fleshreshaper",
		"fleshreshapermed",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	discount_experiments = list(/datum/experiment/scanning/people/mutant = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE)

// Botany root node
/datum/techweb_node/botany_equip
	id = TECHWEB_NODE_BOTANY_EQUIP
	starting_node = TRUE
	display_name = "Ботаническое оборудование"
	description = "Незаменимые инструменты для ухода за бортовыми садами, поддерживающие рост растений в уникальных условиях космической станции."
	design_ids = list(
		"seed_extractor",
		"plant_analyzer",
		"watering_can",
		"spade",
		"cultivator",
		"secateurs",
		"hatchet",
	)

/datum/techweb_node/hydroponics
	id = TECHWEB_NODE_HYDROPONICS
	display_name = "Гидропоника"
	description = "Исследование передовых гидропонных систем для эффективного и устойчивого выращивания растений."
	prereq_ids = list(TECHWEB_NODE_BOTANY_EQUIP, TECHWEB_NODE_CHEM_SYNTHESIS)
	design_ids = list(
		"biogenerator",
		"hydro_tray",
		"portaseeder",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
	announce_channels = list(RADIO_CHANNEL_SERVICE)

/datum/techweb_node/selection
	id = TECHWEB_NODE_SELECTION
	display_name = "Искусственный Отбор"
	description = "Усовершенствование методов выращивания растений с помощью искусственного отбора, позволяющего точно манипулировать ДНК растений."
	prereq_ids = list(TECHWEB_NODE_HYDROPONICS)
	design_ids = list(
		"flora_gun",
		"gene_shears",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	required_experiments = list(/datum/experiment/scanning/random/plants/wild)
	discount_experiments = list(/datum/experiment/scanning/random/plants/traits = TECHWEB_TIER_3_POINTS)
	announce_channels = list(RADIO_CHANNEL_SERVICE)
