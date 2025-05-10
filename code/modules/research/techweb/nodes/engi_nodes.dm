// Parts root node
/datum/techweb_node/parts
	id = TECHWEB_NODE_PARTS
	starting_node = TRUE
	display_name = "Базовые Компоненты"
	description = "Основополагающие компоненты, составляющие основу работы станции и включающие в себя ряд необходимого оборудования, необходимого для повседневной работы."
	design_ids = list(
		"micro_servo",
		"basic_battery",
		"basic_capacitor",
		"basic_cell",
		"basic_matter_bin",
		"basic_micro_laser",
		"basic_scanning",
		"high_battery",
		"high_cell",
		"miniature_power_cell",
		"condenser",
		"igniter",
		"infrared_emitter",
		"prox_sensor",
		"signaler",
		"timer",
		"voice_analyzer",
		"health_sensor",
		"sflash",
	)

/datum/techweb_node/parts_upg
	id = TECHWEB_NODE_PARTS_UPG
	display_name = "Модернизированные Компоненты"
	description = "Предлагают расширенные возможности по сравнению с базовыми аналогами."
	prereq_ids = list(TECHWEB_NODE_PARTS, TECHWEB_NODE_ENERGY_MANIPULATION)
	design_ids = list(
		"rped",
		"high_micro_laser",
		"adv_capacitor",
		"nano_servo",
		"adv_matter_bin",
		"adv_scanning",
		"super_battery",
		"super_cell",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING)

/datum/techweb_node/parts_adv
	id = TECHWEB_NODE_PARTS_ADV
	display_name = "Передовые Компоненты"
	description = "Самые точные и аккуратные стоковые детали."
	prereq_ids = list(TECHWEB_NODE_PARTS_UPG)
	design_ids = list(
		"ultra_micro_laser",
		"super_capacitor",
		"pico_servo",
		"super_matter_bin",
		"phasic_scanning",
		"hyper_battery",
		"hyper_cell",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	required_experiments = list(/datum/experiment/scanning/points/machinery_tiered_scan/tier2_any)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING)


/datum/techweb_node/parts_bluespace
	id = TECHWEB_NODE_PARTS_BLUESPACE
	display_name = "Блюспейс Компоненты"
	description = "Интегрируя новейшие технологии блюспейс, эти передовые компоненты не только повышают функциональность, но и открывают новые возможности для технологических возможностей станции."
	prereq_ids = list(TECHWEB_NODE_PARTS_ADV, TECHWEB_NODE_BLUESPACE_TRAVEL)
	design_ids = list(
		"bs_rped",
		"quadultra_micro_laser",
		"quadratic_capacitor",
		"femto_servo",
		"bluespace_matter_bin",
		"triphasic_scanning",
		"bluespace_battery",
		"bluespace_cell",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	discount_experiments = list(/datum/experiment/scanning/points/machinery_tiered_scan/tier3_any = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING)

/datum/techweb_node/telecomms
	id = TECHWEB_NODE_TELECOMS
	display_name = "Телекоммуникационные Технологии"
	description = "Полный набор оборудования для организации связи в масштабах всей станции, обеспечивающий бесперебойную связь и координацию работы."
	prereq_ids = list(TECHWEB_NODE_PARTS_BLUESPACE)
	design_ids = list(
		"comm_monitor",
		"comm_server",
		"message_monitor",
		"ntnet_relay",
		"s_hub",
		"s_messaging",
		"s_server",
		"s_processor",
		"s_relay",
		"s_bus",
		"s_broadcaster",
		"s_receiver",
		"s_amplifier",
		"s_analyzer",
		"s_ansible",
		"s_crystal",
		"s_filter",
		"s_transmitter",
		"s_treatment",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_5_POINTS)

// Engineering root node
/datum/techweb_node/construction
	id = TECHWEB_NODE_CONSTRUCTION
	starting_node = TRUE
	display_name = "Строительство"
	description = "Инструменты и необходимое оборудование, используемое для обслуживания и расширения станции."
	design_ids = list(
		"circuit_imprinter_offstation",
		"circuit_imprinter",
		"solarcontrol",
		"solar_panel",
		"solar_tracker",
		"power_control",
		"airalarm_electronics",
		"airlock_board",
		"firealarm_electronics",
		"firelock_board",
		"trapdoor_electronics",
		"blast",
		"big_manipulator",
		"tile_sprayer",
		"airlock_painter",
		"decal_painter",
		"rwd",
		"cable_coil",
		"welding_helmet",
		"welding_tool",
		"tscanner",
		"analyzer",
		"multitool",
		"wrench",
		"crowbar",
		"screwdriver",
		"wirecutters",
		"light_bulb",
		"light_tube",
		"crossing_signal",
		"guideway_sensor",
		"manuunloader",
		"manusmelter",
		"manucrusher",
		"manucrafter",
		"manulathe",
		"manusorter",
		"manurouter",
		"mailsorter",
	)

/datum/techweb_node/energy_manipulation
	id = TECHWEB_NODE_ENERGY_MANIPULATION
	display_name = "Манипуляция Энергией"
	description = "Использование необработанной силы дуги молнии с помощью сложных методов управления энергией."
	prereq_ids = list(TECHWEB_NODE_CONSTRUCTION)
	design_ids = list(
		"apc_control",
		"powermonitor",
		"smes",
		"portable_smes",
		"power_connector",
		"emitter",
		"grounding_rod",
		"tesla_coil",
		"cell_charger",
		"recharger",
		"inducer",
		"inducerengi",
		"welding_goggles",
		"tray_goggles",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING)

/datum/techweb_node/shuttle_engineering
	id = TECHWEB_NODE_SHUTTLE_ENG
	display_name = "Инженерия Шаттлов"
	description = "Материалы и оборудование для строительства шаттлов."
	prereq_ids = list(TECHWEB_NODE_ENERGY_MANIPULATION, TECHWEB_NODE_APPLIED_BLUESPACE)
	design_ids = list(
		"borg_upgrade_engineering_shuttle_blueprints",
		"propulsion_engine",
		"shuttle_blueprints",
		"shuttle_control",
		"shuttle_docker",
		"shuttlerods",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_1_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING, RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_SUPPLY)

/datum/techweb_node/holographics
	id = TECHWEB_NODE_HOLOGRAPHICS
	display_name = "Голография"
	description = "Использование голографической технологии для вывесок и барьеров."
	prereq_ids = list(TECHWEB_NODE_ENERGY_MANIPULATION)
	design_ids = list(
		"forcefield_projector",
		"holosign",
		"holosignsec",
		"holosignengi",
		"holosignatmos",
		"holosignrestaurant",
		"holosignbar",
		"holobarrier_jani",
		"holobarrier_med",
		"holopad",
		"vendatray",
		"holodisk",
		"modular_shield_generator",
		"modular_shield_node",
		"modular_shield_relay",
		"modular_shield_charger",
		"modular_shield_well",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)

/datum/techweb_node/hud
	id = TECHWEB_NODE_HUD
	display_name = "Интегрированные HUD-ы"
	description = "Изначально он был разработан для ассистентов, чтобы они могли изучать нюансы различных профессий с помощью дополненной реальности."
	prereq_ids = list(TECHWEB_NODE_HOLOGRAPHICS, TECHWEB_NODE_CYBER_IMPLANTS)
	design_ids = list(
		"health_hud",
		"diagnostic_hud",
		"security_hud",
		"mod_visor_medhud",
		"mod_visor_diaghud",
		"mod_visor_sechud",
		"ci-medhud",
		"ci-diaghud",
		"ci-sechud",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_3_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING, RADIO_CHANNEL_SECURITY, RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

/datum/techweb_node/night_vision
	id = TECHWEB_NODE_NIGHT_VISION
	display_name = "Технология Ночного Видения"
	description = "Ходят слухи, что Нанотрейзен проталкивала эту технологию, чтобы увеличить продолжительность смены, обеспечивая круглосуточную производительность."
	prereq_ids = list(TECHWEB_NODE_HUD)
	design_ids = list(
		"diagnostic_hud_night",
		"health_hud_night",
		"night_visision_goggles",
		"nvgmesons",
		"nv_scigoggles",
		"security_hud_night",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_ENGINEERING, RADIO_CHANNEL_SECURITY, RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)
