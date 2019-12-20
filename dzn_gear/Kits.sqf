// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"ACE_Vector"
#define NIGHT_EQUIP 		if (daytime < 9 || daytime > 18) then { ["ACE_IR_Strobe_Item",2] } else { ["ACE_HandFlare_Green",0] } 
#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define GER_HELM ["CUP_H_Ger_M92_Cover_Trop","CUP_H_Ger_M92_Cover_Trop_GG","CUP_H_Ger_M92_Cover_Trop_GG_CB","CUP_H_Ger_M92_Cover_Trop_GG_CF"]
#define GER_ACCS ["CUP_TK_NeckScarf","CUP_FR_NeckScarf2","CUP_PMC_Facewrap_Tan","CUP_G_ESS_KHK_Scarf_Tan"]
#define GER_UNI ["CUP_U_B_GER_Tropentarn_1","CUP_U_B_GER_Tropentarn_5","CUP_U_B_GER_Tropentarn_8","CUP_U_B_GER_Tropentarn_6","CUP_U_B_GER_Tropentarn_4","CUP_U_B_GER_Tropentarn_2","CUP_U_B_GER_Tropentarn_3"]
kit_ger_pl = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_TL_LT","tf_rt1523g_big_bwmod_tropen",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["SmokeShellGreen",1],["Chemlight_green",2],["HandGrenade",3],["CUP_30Rnd_TE1_Green_Tracer_556x45_G36",3],["PRIMARY MAG",6],["SmokeShellBlue",1]]],
	["<BACKPACK ITEMS >> ",[NIGHT_EQUIP]] 
];
kit_ger_sl = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_TL_LT","tf_rt1523g_big_bwmod_tropen",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["SmokeShellGreen",1],["Chemlight_green",2],["HandGrenade",3],["CUP_30Rnd_TE1_Green_Tracer_556x45_G36",3],["PRIMARY MAG",6],["SmokeShellBlue",5]]],
	["<BACKPACK ITEMS >> ",[NIGHT_EQUIP]] 
];
kit_ger_ftl = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_Gren","",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AG36","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_30Rnd_TE1_Green_Tracer_556x45_G36",2],["1Rnd_HE_Grenade_shell",7],["1Rnd_SmokeRed_Grenade_shell",2],["1Rnd_Smoke_Grenade_shell",2],["HANDGUN MAG",1],["HandGrenade",3],["Chemlight_green",2],["SmokeShellBlue",4],["SmokeShellGreen",1],["SmokeShell",2],NIGHT_EQUIP]],
	["<BACKPACK ITEMS >> ",[]] 
];
kit_ger_gr = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_Gren","",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AG36","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",12],["1Rnd_SmokeRed_Grenade_shell",2],["1Rnd_Smoke_Grenade_shell",2],["HANDGUN MAG",1],["HandGrenade",3],["Chemlight_green",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ger_pionier = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_Gren","CUP_B_GER_Pack_Tropentarn",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["HANDGUN MAG",1],["HandGrenade",3],["Chemlight_green",2]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["DemoCharge_Remote_Mag",5]]]
];
kit_ger_mg = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_MG","CUP_B_GER_Pack_Tropentarn",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","hlc_lmg_MG3KWS_100rnd","hlc_100Rnd_762x51_M_MG3",["","CUP_acc_LLM01_L","CUP_optic_HensoldtZO_low_RDS_desert_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["HandGrenade",3],["Chemlight_green",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1]]]
];
kit_ger_r = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_RFL","",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["Chemlight_green",2],["HANDGUN MAG",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ger_mm = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_RFL","CUP_B_GER_Pack_Tropentarn",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","CUP_acc_LLM01_L","CUP_optic_LeupoldMk4_20x40_LRT_pip","CUP_bipod_G3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["Chemlight_green",2],["HANDGUN MAG",2],["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["hlc_100Rnd_762x51_M_MG3",2]]]
];
kit_ger_jtac = [
	["<EQUIPEMENT >>  ",GER_UNI,"CUP_V_B_GER_PVest_Trop_Gren","tf_rt1523g_big_bwmod_tropen",GER_HELM,GER_ACCS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AG36","CUP_30Rnd_556x45_G36",["","CUP_acc_LLM01_L","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",12],["1Rnd_SmokeRed_Grenade_shell",2],["1Rnd_Smoke_Grenade_shell",2],["HANDGUN MAG",1],["HandGrenade",3],["Chemlight_green",2]]],
	["<BACKPACK ITEMS >> ",[["1Rnd_SmokeRed_Grenade_shell",15],["CUP_FlareRed_M203",7],NIGHT_EQUIP]]
];
kit_ger_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Fleck_Overalls_Pilot","CUP_V_B_PilotVest","tf_rt1523g","H_PilotHelmetHeli_B",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP7_desert","CUP_40Rnd_46x30_MP7",["","CUP_acc_LLM01_coyote_L","CUP_optic_ZeissZPoint_desert",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_IR_Strobe_Item",1],["HandGrenade",2],["Chemlight_green",1],["SmokeShellBlue",2],["SmokeShell",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_ger = [
	[["FirstAidKit",5],["CUP_launch_MAAWS",1]],
	[["CUP_30Rnd_556x45_G36",20],["CUP_HandGrenade_M67",10],["SmokeShell",6],["1Rnd_HE_Grenade_shell",15],["CUP_17Rnd_9x19_glock17",5],["hlc_100Rnd_762x51_M_MG3",20],["DemoCharge_Remote_Mag",3],["CUP_20Rnd_762x51_G3",15],["CUP_MAAWS_HEDP_M",4]],
	[["ACE_Clacker",3]],
	[["CUP_B_GER_Pack_Tropentarn",9]]
];
/// ZLOY TALIBAN
#define ASSIGNED_ITEMS_T	"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define UNIFORM_ITEMS_T 	["ACE_fieldDressing",5]
#define TAL_UNI ["CUP_O_TKI_Khet_Jeans_04","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_08"]
#define TAL_HELM ["CUP_H_TKI_Lungee_05","CUP_H_TKI_Pakol_2_04","CUP_H_TK_Lungee"]
#define TAL_VEST ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket1_03","CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket3_01","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket4_06"]
#define TAL_WEP ["CUP_arifle_AK74_Early","CUP_arifle_AKM_Early","CUP_arifle_AKS","arifle_KA_SKS_F","CUP_arifle_TYPE_56_2_Early"]
#define TAL_MAG ["CUP_30Rnd_545x39_AK_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_762x39_AK47_M","10Rnd_M43_762x39_Ball","CUP_30Rnd_762x39_AK47_bakelite_M"]
#define TAL_WEP_AR ["CUP_lmg_PKM","CUP_lmg_UK59","CUP_arifle_RPK74_45"]
#define TAL_MAG_AR ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M","CUP_50Rnd_UK59_762x54R_Tracer","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"]

kit_taliban_random = [
	"kit_taliban_fighter"
	,"kit_taliban_gr"
	,"kit_taliban_at"
	,"kit_taliban_mg"
	,"kit_taliban_fighter"
	,"kit_taliban_at"
	,"kit_taliban_fighter"
	,"kit_taliban_gr"
	,"kit_taliban_mm"
	,"kit_taliban_at"
];
kit_taliban_fighter = [
	["<EQUIPEMENT >>  ",TAL_UNI,TAL_VEST,"",TAL_HELM,""],
	["<PRIMARY WEAPON >>  ",TAL_WEP,TAL_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_T],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_T]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_taliban_at = [
	["<EQUIPEMENT >>  ",TAL_UNI,TAL_VEST,"CUP_B_AlicePack_Khaki",TAL_HELM,""],
	["<PRIMARY WEAPON >>  ",TAL_WEP,TAL_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_T],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_T]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",3]]]
];
kit_taliban_mg = [
	["<EQUIPEMENT >>  ",TAL_UNI,TAL_VEST,"CUP_B_AlicePack_Khaki",TAL_HELM,""],
	["<PRIMARY WEAPON >>  ",TAL_WEP_AR,TAL_MAG_AR,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_T],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_T]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_taliban_gr = [
	["<EQUIPEMENT >>  ",TAL_UNI,TAL_VEST,"CUP_B_AlicePack_Khaki",TAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_T],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_T]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",5],["CUP_1Rnd_HE_GP25_M",3]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",8]]]
];
kit_taliban_mm = [
	["<EQUIPEMENT >>  ",TAL_UNI,TAL_VEST,"",TAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_T],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_T]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
];