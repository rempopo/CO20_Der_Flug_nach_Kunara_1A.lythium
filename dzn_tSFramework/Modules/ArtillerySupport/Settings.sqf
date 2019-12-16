/*
 *	Dependency:
 *		- Modules/ACEActions
 */
 
 /*
 *	List of Authorized users:
 *		"Admin"			- game admin
 *		@RoleDescription	- all players with appropriate role description
 *		"Any"			- any player
 *
 */
tSF_ArtillerySupport_AuthorizedUsers = [
	"Admin"
	,"1'6 Platoon Leader@1'6"
	,"Platoon Sergeant"
	,"1'2 Squad Leader@1'2"
	,"1'1 Squad Leader@1'1"
	,"JTAC"
];


tSF_ArtillerySupport_initTimeout 				= 0;

tSF_ArtillerySupport_FiremissionPreparationTimeout	= 15;		// Timeout before any shot will be mae\de
tSF_ArtillerySupport_BatteryReloadTime 			= 30*60;	// Timeout for reloading all firemissions

tSF_ArtillerySupport_AdjustFireExpirationTimeout	= 5*30;	// Expirtation Timeout of firemission request during Adjust Fire phase
/*
	@FiremissionsProperties 
	[ @DisplayName, @NumberAvailable, @ListfRounds ]
*/
tSF_ArtillerySupport_FiremissionsProperties = [
	["HE", 6, ["8Rnd_82mm_Mo_shells", "rhs_mag_3vo18_10"]]
	, ["SMK", 9, ["8Rnd_82mm_Mo_Smoke_white", "rhs_mag_d832du_10"]]
	, ["ILLUM", 9, ["8Rnd_82mm_Mo_Flare_white", "rhs_mag_3vs25m_10"]]
];

/*
 *	AI Crew
 */ 
tSF_ArtillerySupport_CrewClassname 	= "B_Soldier_unarmed_F";
tSF_ArtillerySupport_CrewKitname 		= "kit_ger_r";
