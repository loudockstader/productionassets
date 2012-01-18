// Generated from MockBuilderDataService.hx.erb in the ProductionAssets repo
package incubet.myvegas.services.games.mocks;

import haxe.Timer;

import incubet.myvegas.dtos.builder.AttributesListDTO;
import incubet.myvegas.dtos.builder.AttributesDTO;
import incubet.myvegas.dtos.builder.AvailableBuildingsDTO;
import incubet.myvegas.dtos.builder.BuilderInitDTO;
import incubet.myvegas.dtos.builder.BuildingCollectedDTO;
import incubet.myvegas.dtos.builder.BuildingPlaceDTO;
import incubet.myvegas.dtos.builder.StateDTO;
import incubet.myvegas.dtos.builder.StatesDTO;
import incubet.myvegas.dtos.builder.StaticBuildingInfoDTO;
import incubet.myvegas.services.games.interfaces.IBuilderDataService;

using Lambda;

class MockBuilderDataService implements IBuilderDataService
{
	static var LOT_ID:Int = 0;

	var types:Array<AttributesDTO>;
	var states:Array<StateDTO>;
	var buildables:Array<BuildingDTO>;

	var lots:Array<LotDTO>;
	var placed:Array<PlacedBuildingDTO>;
	var collections:Hash<Float>;

	public function new() 
	{
		states = new Array<StateDTO>();
		types = new Array<AttributesDTO>();
		buildables = new Array<BuildingDTO>();
		lots = new Array<LotDTO>();
		placed = new Array<PlacedBuildingDTO>();
		collections = new Hash<Float>();

		states.push({Id:"default", Name:"Default", NextStateId:"default", Attraction:80, Duration:9999999, GenerationAmount:50, GenerationInterval:10});

		
		types.push({Id:"ar_crystals", Name:"name_ar_crystals", Zoning:"ar", Asset:"ar_crystals", StateIds:["default"]});
		types.push({Id:"ar_mandarin", Name:"name_ar_mandarin", Zoning:"ar", Asset:"ar_mandarin", StateIds:["default"]});
		types.push({Id:"ar_marquee", Name:"name_ar_marquee", Zoning:"ar", Asset:"ar_marquee", StateIds:["default"]});
		types.push({Id:"ar_pool-liquid", Name:"name_ar_pool-liquid", Zoning:"ar", Asset:"ar_pool-liquid", StateIds:["default"]});
		types.push({Id:"ar_portcochere", Name:"name_ar_portcochere", Zoning:"ar", Asset:"ar_portcochere", StateIds:["default"]});
		types.push({Id:"ar_statue", Name:"name_ar_statue", Zoning:"ar", Asset:"ar_statue", StateIds:["default"]});
		types.push({Id:"ar_tile", Name:"name_ar_tile", Zoning:"ar", Asset:"ar_tile", StateIds:["default"]});
		types.push({Id:"ar_tower", Name:"name_ar_tower", Zoning:"ar", Asset:"ar_tower", StateIds:["default"]});
		types.push({Id:"ar_veertowers", Name:"name_ar_veertowers", Zoning:"ar", Asset:"ar_veertowers", StateIds:["default"]});
		types.push({Id:"cc_tower_const", Name:"name_cc_tower_const", Zoning:"cc", Asset:"cc_tower_const", StateIds:["default"]});
		types.push({Id:"com_eatdiner", Name:"name_com_eatdiner", Zoning:"com_eatdiner", Asset:"com_eatdiner", StateIds:["default"]});
		types.push({Id:"com_forlease", Name:"name_com_forlease", Zoning:"com_forlease", Asset:"com_forlease", StateIds:["default"]});
		types.push({Id:"com_helicopter", Name:"name_com_helicopter", Zoning:"com_helicopter", Asset:"com_helicopter", StateIds:["default"]});
		types.push({Id:"const_bobcat", Name:"name_const_bobcat", Zoning:"const", Asset:"const_bobcat", StateIds:["default"]});
		types.push({Id:"const_concrete", Name:"name_const_concrete", Zoning:"const", Asset:"const_concrete", StateIds:["default"]});
		types.push({Id:"const_crane1", Name:"name_const_crane1", Zoning:"const", Asset:"const_crane1", StateIds:["default"]});
		types.push({Id:"const_crane2", Name:"name_const_crane2", Zoning:"const", Asset:"const_crane2", StateIds:["default"]});
		types.push({Id:"const_floor1x1", Name:"name_const_floor1x1", Zoning:"const", Asset:"const_floor1x1", StateIds:["default"]});
		types.push({Id:"const_pipes", Name:"name_const_pipes", Zoning:"const", Asset:"const_pipes", StateIds:["default"]});
		types.push({Id:"const_tile1", Name:"name_const_tile1", Zoning:"const", Asset:"const_tile1", StateIds:["default"]});
		types.push({Id:"const_tile2", Name:"name_const_tile2", Zoning:"const", Asset:"const_tile2", StateIds:["default"]});
		types.push({Id:"ex_car", Name:"name_ex_car", Zoning:"ex", Asset:"ex_car", StateIds:["default"]});
		types.push({Id:"ex_car_00", Name:"name_ex_car_00", Zoning:"ex", Asset:"ex_car_00", StateIds:["default"]});
		types.push({Id:"ex_car_180", Name:"name_ex_car_180", Zoning:"ex", Asset:"ex_car_180", StateIds:["default"]});
		types.push({Id:"ex_car_270", Name:"name_ex_car_270", Zoning:"ex", Asset:"ex_car_270", StateIds:["default"]});
		types.push({Id:"ex_car_90", Name:"name_ex_car_90", Zoning:"ex", Asset:"ex_car_90", StateIds:["default"]});
		types.push({Id:"ex_castle", Name:"name_ex_castle", Zoning:"ex", Asset:"ex_castle", StateIds:["default"]});
		types.push({Id:"ex_castle_mirrored", Name:"name_ex_castle_mirrored", Zoning:"ex", Asset:"ex_castle_mirrored", StateIds:["default"]});
		types.push({Id:"ex_drawbridge", Name:"name_ex_drawbridge", Zoning:"ex", Asset:"ex_drawbridge", StateIds:["default"]});
		types.push({Id:"ex_grass1", Name:"name_ex_grass1", Zoning:"ex", Asset:"ex_grass1", StateIds:["default"]});
		types.push({Id:"ex_grass2", Name:"name_ex_grass2", Zoning:"ex", Asset:"ex_grass2", StateIds:["default"]});
		types.push({Id:"ex_grass3", Name:"name_ex_grass3", Zoning:"ex", Asset:"ex_grass3", StateIds:["default"]});
		types.push({Id:"ex_grass4", Name:"name_ex_grass4", Zoning:"ex", Asset:"ex_grass4", StateIds:["default"]});
		types.push({Id:"ex_marquee1", Name:"name_ex_marquee1", Zoning:"ex", Asset:"ex_marquee1", StateIds:["default"]});
		types.push({Id:"ex_marquee2", Name:"name_ex_marquee2", Zoning:"ex", Asset:"ex_marquee2", StateIds:["default"]});
		types.push({Id:"ex_tile", Name:"name_ex_tile", Zoning:"ex", Asset:"ex_tile", StateIds:["default"]});
		types.push({Id:"ex_tournament", Name:"name_ex_tournament", Zoning:"ex", Asset:"ex_tournament", StateIds:["default"]});
		types.push({Id:"ex_tower", Name:"name_ex_tower", Zoning:"ex", Asset:"ex_tower", StateIds:["default"]});
		types.push({Id:"ex_tower1", Name:"name_ex_tower1", Zoning:"ex", Asset:"ex_tower1", StateIds:["default"]});
		types.push({Id:"ex_tower2", Name:"name_ex_tower2", Zoning:"ex", Asset:"ex_tower2", StateIds:["default"]});
		types.push({Id:"ex_tower_mirrored", Name:"name_ex_tower_mirrored", Zoning:"ex", Asset:"ex_tower_mirrored", StateIds:["default"]});
		types.push({Id:"ex_treeslarge1", Name:"name_ex_treeslarge1", Zoning:"ex", Asset:"ex_treeslarge1", StateIds:["default"]});
		types.push({Id:"ex_treeslarge2", Name:"name_ex_treeslarge2", Zoning:"ex", Asset:"ex_treeslarge2", StateIds:["default"]});
		types.push({Id:"ex_treesmall_00", Name:"name_ex_treesmall_00", Zoning:"ex", Asset:"ex_treesmall_00", StateIds:["default"]});
		types.push({Id:"ex_treesmall_180", Name:"name_ex_treesmall_180", Zoning:"ex", Asset:"ex_treesmall_180", StateIds:["default"]});
		types.push({Id:"ex_treesmall_270", Name:"name_ex_treesmall_270", Zoning:"ex", Asset:"ex_treesmall_270", StateIds:["default"]});
		types.push({Id:"ex_treesmall_90", Name:"name_ex_treesmall_90", Zoning:"ex", Asset:"ex_treesmall_90", StateIds:["default"]});
		types.push({Id:"ex_treesmedium", Name:"name_ex_treesmedium", Zoning:"ex", Asset:"ex_treesmedium", StateIds:["default"]});
		types.push({Id:"ex_treessmall1", Name:"name_ex_treessmall1", Zoning:"ex", Asset:"ex_treessmall1", StateIds:["default"]});
		types.push({Id:"ex_treessmall2", Name:"name_ex_treessmall2", Zoning:"ex", Asset:"ex_treessmall2", StateIds:["default"]});
		types.push({Id:"hot_bellagio", Name:"name_hot_bellagio", Zoning:"hot_bellagio", Asset:"hot_bellagio", StateIds:["default"]});
		types.push({Id:"hot_mandalay", Name:"name_hot_mandalay", Zoning:"hot_mandalay", Asset:"hot_mandalay", StateIds:["default"]});
		types.push({Id:"hot_mgmgrand", Name:"name_hot_mgmgrand", Zoning:"hot_mgmgrand", Asset:"hot_mgmgrand", StateIds:["default"]});
		types.push({Id:"hot_mirage", Name:"name_hot_mirage", Zoning:"hot_mirage", Asset:"hot_mirage", StateIds:["default"]});
		types.push({Id:"mc_diablo", Name:"name_mc_diablo", Zoning:"mc", Asset:"mc_diablo", StateIds:["default"]});
		types.push({Id:"mc_entrance", Name:"name_mc_entrance", Zoning:"mc", Asset:"mc_entrance", StateIds:["default"]});
		types.push({Id:"mc_marquee", Name:"name_mc_marquee", Zoning:"mc", Asset:"mc_marquee", StateIds:["default"]});
		types.push({Id:"mc_pool", Name:"name_mc_pool", Zoning:"mc", Asset:"mc_pool", StateIds:["default"]});
		types.push({Id:"mc_streetlamp", Name:"name_mc_streetlamp", Zoning:"mc", Asset:"mc_streetlamp", StateIds:["default"]});
		types.push({Id:"mc_tower", Name:"name_mc_tower", Zoning:"mc", Asset:"mc_tower", StateIds:["default"]});
		types.push({Id:"mc_vollyballcourt", Name:"name_mc_vollyballcourt", Zoning:"mc", Asset:"mc_vollyballcourt", StateIds:["default"]});
		types.push({Id:"ny_bridge", Name:"name_ny_bridge", Zoning:"ny", Asset:"ny_bridge", StateIds:["default"]});
		types.push({Id:"ny_zumanity", Name:"name_ny_zumanity", Zoning:"ny", Asset:"ny_zumanity", StateIds:["default"]});
		types.push({Id:"nyny_brooklynbridge", Name:"name_nyny_brooklynbridge", Zoning:"nyny", Asset:"nyny_brooklynbridge", StateIds:["default"]});
		types.push({Id:"nyny_marquee", Name:"name_nyny_marquee", Zoning:"nyny", Asset:"nyny_marquee", StateIds:["default"]});
		types.push({Id:"nyny_statueofliberty", Name:"name_nyny_statueofliberty", Zoning:"nyny", Asset:"nyny_statueofliberty", StateIds:["default"]});
		types.push({Id:"rat_aladdin", Name:"name_rat_aladdin", Zoning:"rat_aladdin", Asset:"rat_aladdin", StateIds:["default"]});
		types.push({Id:"rat_desertrose", Name:"name_rat_desertrose", Zoning:"rat_desertrose", Asset:"rat_desertrose", StateIds:["default"]});
		types.push({Id:"rat_dunes", Name:"name_rat_dunes", Zoning:"rat_dunes", Asset:"rat_dunes", StateIds:["default"]});
		types.push({Id:"rat_elrancho", Name:"name_rat_elrancho", Zoning:"rat_elrancho", Asset:"rat_elrancho", StateIds:["default"]});
		types.push({Id:"rat_flamingo", Name:"name_rat_flamingo", Zoning:"rat_flamingo", Asset:"rat_flamingo", StateIds:["default"]});
		types.push({Id:"rat_horseshoe", Name:"name_rat_horseshoe", Zoning:"rat_horseshoe", Asset:"rat_horseshoe", StateIds:["default"]});
		types.push({Id:"rat_moulinrouge", Name:"name_rat_moulinrouge", Zoning:"rat_moulinrouge", Asset:"rat_moulinrouge", StateIds:["default"]});
		types.push({Id:"rat_orbitinn", Name:"name_rat_orbitinn", Zoning:"rat_orbitinn", Asset:"rat_orbitinn", StateIds:["default"]});
		types.push({Id:"rat_pioneer", Name:"name_rat_pioneer", Zoning:"rat_pioneer", Asset:"rat_pioneer", StateIds:["default"]});
		types.push({Id:"rat_royalnevada", Name:"name_rat_royalnevada", Zoning:"rat_royalnevada", Asset:"rat_royalnevada", StateIds:["default"]});
		types.push({Id:"rat_sassysally", Name:"name_rat_sassysally", Zoning:"rat_sassysally", Asset:"rat_sassysally", StateIds:["default"]});
		types.push({Id:"rat_stardust", Name:"name_rat_stardust", Zoning:"rat_stardust", Asset:"rat_stardust", StateIds:["default"]});
		types.push({Id:"rat_strand", Name:"name_rat_strand", Zoning:"rat_strand", Asset:"rat_strand", StateIds:["default"]});
		types.push({Id:"rat_themint", Name:"name_rat_themint", Zoning:"rat_themint", Asset:"rat_themint", StateIds:["default"]});
		
		
		buildables.push({Id:"ar_crystals_instance", AttributesId:"ar_crystals", Name:""});
		buildables.push({Id:"ar_mandarin_instance", AttributesId:"ar_mandarin", Name:""});
		buildables.push({Id:"ar_marquee_instance", AttributesId:"ar_marquee", Name:""});
		buildables.push({Id:"ar_pool-liquid_instance", AttributesId:"ar_pool-liquid", Name:""});
		buildables.push({Id:"ar_portcochere_instance", AttributesId:"ar_portcochere", Name:""});
		buildables.push({Id:"ar_statue_instance", AttributesId:"ar_statue", Name:""});
		buildables.push({Id:"ar_tile_instance", AttributesId:"ar_tile", Name:""});
		buildables.push({Id:"ar_tower_instance", AttributesId:"ar_tower", Name:""});
		buildables.push({Id:"ar_veertowers_instance", AttributesId:"ar_veertowers", Name:""});
		buildables.push({Id:"cc_tower_const_instance", AttributesId:"cc_tower_const", Name:""});
		buildables.push({Id:"com_eatdiner_instance", AttributesId:"com_eatdiner", Name:""});
		buildables.push({Id:"com_forlease_instance", AttributesId:"com_forlease", Name:""});
		buildables.push({Id:"com_helicopter_instance", AttributesId:"com_helicopter", Name:""});
		buildables.push({Id:"const_bobcat_instance", AttributesId:"const_bobcat", Name:""});
		buildables.push({Id:"const_concrete_instance", AttributesId:"const_concrete", Name:""});
		buildables.push({Id:"const_crane1_instance", AttributesId:"const_crane1", Name:""});
		buildables.push({Id:"const_crane2_instance", AttributesId:"const_crane2", Name:""});
		buildables.push({Id:"const_floor1x1_instance", AttributesId:"const_floor1x1", Name:""});
		buildables.push({Id:"const_pipes_instance", AttributesId:"const_pipes", Name:""});
		buildables.push({Id:"const_tile1_instance", AttributesId:"const_tile1", Name:""});
		buildables.push({Id:"const_tile2_instance", AttributesId:"const_tile2", Name:""});
		buildables.push({Id:"ex_car_instance", AttributesId:"ex_car", Name:""});
		buildables.push({Id:"ex_car_00_instance", AttributesId:"ex_car_00", Name:""});
		buildables.push({Id:"ex_car_180_instance", AttributesId:"ex_car_180", Name:""});
		buildables.push({Id:"ex_car_270_instance", AttributesId:"ex_car_270", Name:""});
		buildables.push({Id:"ex_car_90_instance", AttributesId:"ex_car_90", Name:""});
		buildables.push({Id:"ex_castle_instance", AttributesId:"ex_castle", Name:""});
		buildables.push({Id:"ex_castle_mirrored_instance", AttributesId:"ex_castle_mirrored", Name:""});
		buildables.push({Id:"ex_drawbridge_instance", AttributesId:"ex_drawbridge", Name:""});
		buildables.push({Id:"ex_grass1_instance", AttributesId:"ex_grass1", Name:""});
		buildables.push({Id:"ex_grass2_instance", AttributesId:"ex_grass2", Name:""});
		buildables.push({Id:"ex_grass3_instance", AttributesId:"ex_grass3", Name:""});
		buildables.push({Id:"ex_grass4_instance", AttributesId:"ex_grass4", Name:""});
		buildables.push({Id:"ex_marquee1_instance", AttributesId:"ex_marquee1", Name:""});
		buildables.push({Id:"ex_marquee2_instance", AttributesId:"ex_marquee2", Name:""});
		buildables.push({Id:"ex_tile_instance", AttributesId:"ex_tile", Name:""});
		buildables.push({Id:"ex_tournament_instance", AttributesId:"ex_tournament", Name:""});
		buildables.push({Id:"ex_tower_instance", AttributesId:"ex_tower", Name:""});
		buildables.push({Id:"ex_tower1_instance", AttributesId:"ex_tower1", Name:""});
		buildables.push({Id:"ex_tower2_instance", AttributesId:"ex_tower2", Name:""});
		buildables.push({Id:"ex_tower_mirrored_instance", AttributesId:"ex_tower_mirrored", Name:""});
		buildables.push({Id:"ex_treeslarge1_instance", AttributesId:"ex_treeslarge1", Name:""});
		buildables.push({Id:"ex_treeslarge2_instance", AttributesId:"ex_treeslarge2", Name:""});
		buildables.push({Id:"ex_treesmall_00_instance", AttributesId:"ex_treesmall_00", Name:""});
		buildables.push({Id:"ex_treesmall_180_instance", AttributesId:"ex_treesmall_180", Name:""});
		buildables.push({Id:"ex_treesmall_270_instance", AttributesId:"ex_treesmall_270", Name:""});
		buildables.push({Id:"ex_treesmall_90_instance", AttributesId:"ex_treesmall_90", Name:""});
		buildables.push({Id:"ex_treesmedium_instance", AttributesId:"ex_treesmedium", Name:""});
		buildables.push({Id:"ex_treessmall1_instance", AttributesId:"ex_treessmall1", Name:""});
		buildables.push({Id:"ex_treessmall2_instance", AttributesId:"ex_treessmall2", Name:""});
		buildables.push({Id:"hot_bellagio_instance", AttributesId:"hot_bellagio", Name:""});
		buildables.push({Id:"hot_mandalay_instance", AttributesId:"hot_mandalay", Name:""});
		buildables.push({Id:"hot_mgmgrand_instance", AttributesId:"hot_mgmgrand", Name:""});
		buildables.push({Id:"hot_mirage_instance", AttributesId:"hot_mirage", Name:""});
		buildables.push({Id:"mc_diablo_instance", AttributesId:"mc_diablo", Name:""});
		buildables.push({Id:"mc_entrance_instance", AttributesId:"mc_entrance", Name:""});
		buildables.push({Id:"mc_marquee_instance", AttributesId:"mc_marquee", Name:""});
		buildables.push({Id:"mc_pool_instance", AttributesId:"mc_pool", Name:""});
		buildables.push({Id:"mc_streetlamp_instance", AttributesId:"mc_streetlamp", Name:""});
		buildables.push({Id:"mc_tower_instance", AttributesId:"mc_tower", Name:""});
		buildables.push({Id:"mc_vollyballcourt_instance", AttributesId:"mc_vollyballcourt", Name:""});
		buildables.push({Id:"ny_bridge_instance", AttributesId:"ny_bridge", Name:""});
		buildables.push({Id:"ny_zumanity_instance", AttributesId:"ny_zumanity", Name:""});
		buildables.push({Id:"nyny_brooklynbridge_instance", AttributesId:"nyny_brooklynbridge", Name:""});
		buildables.push({Id:"nyny_marquee_instance", AttributesId:"nyny_marquee", Name:""});
		buildables.push({Id:"nyny_statueofliberty_instance", AttributesId:"nyny_statueofliberty", Name:""});
		buildables.push({Id:"rat_aladdin_instance", AttributesId:"rat_aladdin", Name:""});
		buildables.push({Id:"rat_desertrose_instance", AttributesId:"rat_desertrose", Name:""});
		buildables.push({Id:"rat_dunes_instance", AttributesId:"rat_dunes", Name:""});
		buildables.push({Id:"rat_elrancho_instance", AttributesId:"rat_elrancho", Name:""});
		buildables.push({Id:"rat_flamingo_instance", AttributesId:"rat_flamingo", Name:""});
		buildables.push({Id:"rat_horseshoe_instance", AttributesId:"rat_horseshoe", Name:""});
		buildables.push({Id:"rat_moulinrouge_instance", AttributesId:"rat_moulinrouge", Name:""});
		buildables.push({Id:"rat_orbitinn_instance", AttributesId:"rat_orbitinn", Name:""});
		buildables.push({Id:"rat_pioneer_instance", AttributesId:"rat_pioneer", Name:""});
		buildables.push({Id:"rat_royalnevada_instance", AttributesId:"rat_royalnevada", Name:""});
		buildables.push({Id:"rat_sassysally_instance", AttributesId:"rat_sassysally", Name:""});
		buildables.push({Id:"rat_stardust_instance", AttributesId:"rat_stardust", Name:""});
		buildables.push({Id:"rat_strand_instance", AttributesId:"rat_strand", Name:""});
		buildables.push({Id:"rat_themint_instance", AttributesId:"rat_themint", Name:""});
	}
	
	public function getGameState(func:BuilderInitDTO->Void):Void
	{
		delay(func, {Buildable:buildables, Strip:{Lots:lots}});
	}
	
	public function fetchWorld(func:BuilderInitDTO->Void):Void
	{
		delay(func, {Buildable:buildables, Strip:{Lots:lots}});
	}
	
	public function fetchBuildingAttributes(func:AttributesListDTO->Void):Void
	{
		throw "fetchBuildingAttributes shouldn't be implemented in the client";
//		delay(func, {Attributes:attributes});
	}

	public function fetchBuildingStates(func:StatesDTO->Void):Void
	{
		throw "fetchBuildingStates shouldn't be implemented in the client";
//		delay(func, {States:states});
	}

	public function placeBuilding(buildingId:String, lotId:String, x:Int, y:Int, func:BuildingPlaceDTO->Void):Void
	{
		var buildable = getBuildable(buildingId);
		var type = getType(buildable.AttributesId);
		var lot = getLot(lotId);
		var typeID = type.Id;
		var typeName:String = type.Name;
		var position = {X:x, Y:y};
		var startBuild = getTime();
		var lastCollected = getTime(30 * 1000);
		var stateID = type.StateIds[0];
		var placedBuilding = {Id:buildingId, AttributesId:typeID, Name:typeName, LastCollected:lastCollected, StartBuild:startBuild, StateId:stateID, Position:position};
		
		buildables.remove(buildable);
		collections.set(buildingId, Date.now().getTime());
		placed.push(placedBuilding);
		lot.Buildings.push(placedBuilding);
		
		delay(func, {LotId:lotId, PlacedBuilding:placedBuilding});
	}
	
	public function placeBuildingInNewLot(buildingId:String, buildingX:Int, buildingY:Int, lotWidth:Int, lotHeight:Int, lotX:Int, lotY:Int, func:BuildingPlaceDTO->Void):Void
	{
		var buildable = getBuildable(buildingId);
		var type = getType(buildable.AttributesId);
		var lotID = "lot" + Std.string(++LOT_ID);
		var lotType = type.Zoning;
		var typeID = type.Id;
		var typeName:String = type.Name;
		var position = {X:buildingX, Y:buildingY};
		var startBuild = getTime();
		var lastCollected = getTime(30 * 1000);
		var stateID = type.StateIds[0];
		var placedBuilding = {Id:buildingId, AttributesId:typeID, Name:typeName, LastCollected:lastCollected, StartBuild:startBuild, StateId:stateID, Position:position};
		
		buildables.remove(buildable);
		collections.set(buildingId, Date.now().getTime());
		placed.push(placedBuilding);
		lots.push({Buildings:[placedBuilding], Id:lotID, Zoning:lotType, Height:lotHeight, Width:lotWidth, PositionX:lotX, PositionY:lotY});
		delay(func, {LotId:lotID, PlacedBuilding:placedBuilding});
	}

	public function collectBuilding(instanceID:String, func:BuildingCollectedDTO->Void):Void
	{
		var time = Date.now().getTime();
		var building = getBuilding(instanceID);
		var collected = collections.get(instanceID);

		collections.set(instanceID, time);

		var deltaTime = Std.int((time - collected) / 1000);
		if (deltaTime < 0)
			deltaTime = 0;
		
		// FIXME this isn't hooked into the current state of the building...
		var gold = 50 * Std.int(deltaTime / 10);

		delay(func, {Collected:[{Key:"Credits", Value:gold}]});
	}
	
	public function fetchAvailableBuildings(func:AvailableBuildingsDTO->Void):Void
	{
		delay(func, {Buildable:buildables});
	}
	
	public function fetchStaticBuildingInfo(func:StaticBuildingInfoDTO->Void):Void
	{
		delay(func, {Attributes:types, States:states});
	}

	inline function getLot(lotID:String):LotDTO
	{
		var match = null;
		for (lot in lots)
		{
			if (lot.Id == lotID)
			{
				match = lot;
				break;
			}
		}

		return match;
	}

	inline function getBuilding(instanceID:String):PlacedBuildingDTO
	{
		var match = null;
		for (building in placed)
		{
			if (building.Id == instanceID)
			{
				match = building;
				break;
			}
		}

		return match;
	}

	inline function getBuildable(instanceID:String):BuildingDTO
	{
		var match = null;
		for (buildable in buildables)
		{
			if (buildable.Id == instanceID)
			{
				match = buildable;
				break;
			}
		}

		return match;
	}

	inline function getType(typeID:String):AttributesDTO
	{
		var match = null;
		for (type in types)
		{
			if (type.Id == typeID)
			{
				match = type;
				break;
			}
		}

		return match;
	}

	inline function getTime(?delta:Int = 0):String
	{
		var value = Date.now().getTime() + delta;
		return "/Date(" + Std.string(value) + ")/";
	}

	function delay<T>(fn:T->Void, data:T)
	{
		var delayed = function() { fn(data); };
		Timer.delay(delayed, 100);
	}

}