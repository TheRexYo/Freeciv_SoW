-- Freeciv - Copyright (C) 2007 - The Freeciv Project
--   This program is free software; you can redistribute it and/or modify
--   it under the terms of the GNU General Public License as published by
--   the Free Software Foundation; either version 2, or (at your option)
--   any later version.
--
--   This program is distributed in the hope that it will be useful,
--   but WITHOUT ANY WARRANTY; without even the implied warranty of
--   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--   GNU General Public License for more details.

-- This file is for lua-functionality that is specific to a given
-- ruleset. When freeciv loads a ruleset, it also loads script
-- file called 'default.lua'. The one loaded if your ruleset
-- does not provide an override is default/default.lua.

endtimes = false
alerted = false
gamestarted = false
forceendtimes = false
exodiispawnlist = {}
exodiispawnlist[1] = {} --Default
exodiispawnlist[2] = {} --Vanguard
-- Start of Default Exodii Spawn List --
exodiispawnlist[1][1] = "Exodii Laserbladers"
-- End of Default Exodii Spawn List --
-- Start of Vanguard Exodii Spawn List --
exodiispawnlist[2][1] = "Exodii Laserbladers"
exodiispawnlist[2][2] = "Exodii Warpers"
-- End of Vanguard Exodii Spawn List --
local beasts = {}
beasts["Desert"] = {}
beasts["Mountain"] = {}
-- Start of Beast Spawn List
beasts["Desert"][1] = "Deathworm"
beasts["Mountain"][1] = "Dragon"
-- End of Beast Spawn List
messages = {}
-- Start of Messages --
messages["Aetherian"] = "\
The Aetherians form a balanced nation\
 that can grow rapidly due to its\
 ability to 'Rapture Grow' regardless of size or\
 government. This means that all cities, no matter\
 how large, grow by one citizen per turn, provided\
 it has no unhappy citizens and at least 50% of\
 its citizens are happy rather than content.\
 \n*Tip: Try to keep your citizens as happy as\
 possible. This will ensure maximum growth.\
"

messages["Atlantean"] = "\
The Atlanteans form a military-oriented nation\
 that can expand rapidly due to its ability to\
 settle on ocean tiles. Thus, the nation can expand\
 to the oceans to avoid conflict with the other nations,\
 provided they haven't unlocked any naval units.\
 \n*Tip: The Atlanteans have access to the special\
 wonder 'Temple Aquae', which, when built, gives them\
 a free 'Leviathan' unit at the city where it was built.\
"

messages["Mesyptian"] = "\
The Mesyptians form a construction-oriented nation\
 designed to build wonders at maximum efficiency.\
 They utilize special 'slave' units to speed up\
 wonders being built, and they start with the\
 masonry technology, allowing them to build\
 the Great Wonder 'Nephaliths' straight off the bat.\
 Additionally, the Mesyptians ignore Improvement upkeep\
 for Improvements with an upkeep cost of 1 or less.\
 \n*Tip: Slave units will not retaliate if attacked,\
 meaning that they can be captured despite their\
 conventional equivalents lacking such a weakness.\
 Keep them guarded at all costs!\
"

messages["Skyfolk"] = "\
The Skyfolk are a military-oriented nation\
 that is especially useful for new players\
 due to its reduced pollution. Additionally,\
 this nation possesses the ability to produce\
 advanced aerial units once it researches the\
 requisite technologies to craft them and builds\
 its signature wonder - the 'Chameran Aviation Academy'.\
 \n*Tip: The Skyfolk are especially effective\
 in Verdant terrain, where they regenerate 25 HP\
 per turn instead of the standard 10. Use this to\
 your advantage when fighting a war!\
"

messages["Wasteraiders"] = "\
The Wasteraiders form a military-oriented nation\
 that is most useful to experienced players due to\
 its increased production at the cost of pollution.\
 Additionally, this nation possesses the ability to\
 produce advanced artillery units once it researches the\
 requisite technologies to craft them and builds\
 its signature wonder - the 'Ensdaelian Grand Forge'.\
 \n*Tip: The Wasteraiders are especially effective\
 in Wasteland terrain, where they are immune to the\
 HP-draining effects of those areas. This allows them\
 to safely travel where others cannot.\
"

messages["Kth'ii"] = "\
The Kth'ii form a military-oriented nation\
 that is distinctly known for its cavalry.\
 The nation starts with the 'Animal Husbandry'\
 technology, allowing it to build many animal units\
 right off the bat. After building their signature\
 building 'Kth'ii Bestiary', they can produce their\
 signature unit 'Kth'ii Riders', provided they have\
 unlocked the Pyroscorpis unit. This unit has incredibly\
 high base stats, making it a top-pick cavalry unit.\
 \n*Tip: The Kth'ii are especially effective\
 in Lava terrain, where they are immune to the\
 HP-draining effects of those areas. This allows them\
 to safely travel where others cannot.\
"

messages["Noraskan"] = "\
The Noraskans form a military-oriented nation\
 that is distinctly known for its naval power.\
 The nation starts with the 'Seafaring' technology,\
 allowing it to build naval units right off the bat.\
 \n*Tip: The Noraskan sea units are easily some of the\
 most dangerous naval units in the early-game. Take\
 advantage of their power before they become obsolete!\
"

messages["Imperian"] = "\
The Imperians form an expansion-oriented nation\
 that is best suited to rapidly settling as much\
 terrain as possible. There is no empire size penalty\
 for them, and their cities can grow up to two sizes\
 larger than normal. This makes them perfect for\
 colonization of all types.\
 \n*Tip: The Imperians start with the 'Despotism' government,\
 negating the need to start a revolution should you decide to\
 be a dictator.\
"

messages["Zhinese"] = "\
The Zhinese form a construction-oriented nation\
 that is best suited to expanding its individual\
 cities rather than building new ones, as they\
 have an increased shield output. They start with\
 the tech 'Masonry', allowing them to build the wonder\
 'Worldspine Wall' right off the bat. This wonder provides\
 unparalleled benefits to the city it is built in, further\
 increasing the benefits of focusing on settling less and\
 building more.\
 \n*Tip: The 'Masonry' tech also gives access to the wonder\
 'Nephaliths', which can be built first to increase the speed\
 at which the 'Worldspine Wall' is constructed, if necessary.\
"

messages["Rhonan"] = "\
The Rhonans form a balanced nation that is best suited\
 for all purposes. In particular, the nation starts off\
 with the technologies 'Monarchy' and 'The Republic'.\
 This allows them to gain an early-game edge by choosing\
 the government that best suits their needs.\
 \n*Tip: The Rhonans start with the 'Monarchy' government,\
 negating the need to start a revolution should you decide to\
 be a monarch.\
"

messages["Jharappe"] = "\
The Jharappe form a balanced nation that is best suited\
 for all purposes. In particular, the nation starts off\
 with all of the first-tier technologies, giving it a\
 head-start at research.\
 \n*Tip: The Jharappe have no single playstyle,\
 so feel free to research whatever you want!\
"

messages["Neph"] = "\
The Neph form a balanced nation that is best suited\
 for all purposes. It is especially versatile thanks to\
 its ability to freely switch governments. This allows them\
 to obtain whatever benefits they need at any time they deem\
 it necessary. This is especially useful once multiple governments\
 have been unlocked.\
 \n*Tip: When Neph cities are captured, they inspire partisans to\
 defend them. Use this to your advantage when fighting a war.\
"

messages["Zegrek"] = "\
The Zegrek form a powerful military-oriented nation\
 best-suited for rapid early-game advances. This is\
 because they possess an enhanced version of the\
 Phalanx that is rather difficult to combat due to\
 its high defense. Additionally, they also possess\
 a building that allows them to produce that unit:\
 the Zegrek Garrison. This building doesn't only\
 make it so the city can build better Phalanxes, but\
 also causes the city to Inspire Partisans to defend\
 it when captured.\
"
--  End of Messages  --
-- Place Ruins at the location of the destroyed city.
function city_destroyed_callback(city, loser, destroyer)
  city.tile:create_extra("Ruins", NIL)
  -- continue processing
  return false
end

signal.connect("city_destroyed", "city_destroyed_callback")

-- Place Ruins at the location of the destroyed city.
function building_built_callback(type, city)
  if type:rule_name() == "Eye Of The Gods" then
		notify.all("The power of divinity \nblankets the land...")
  end
  if type:rule_name() == "Temple Aquae" then
		create_player_unit_of_type(city.owner, city.tile, "Leviathan", 0, city, 0)
		notify.all("The Leviathan awakens...")
  end
  -- continue processing
  return false
end

signal.connect("building_built", "building_built_callback")

function NationExists(name)
	for player in players_iterate() do
		local nation = player.nation
		local nationname = nation:rule_name()
		if nationname == name then
			return true
		end
	end
	return false
end

function GetNation(name)
	for player in players_iterate() do
		local nation = player.nation
		local nationname = nation:rule_name()
		if nationname == name then
			return nation
		end
	end
	return nil
end

function GetNationsPlayer(name)
	for player in players_iterate() do
		local nation = player.nation
		local nationname = nation:rule_name()
		if nationname == name then
			return player
		end
	end
	return nil
end

function initialize(player)
	local nation = player.nation
	local nationname = nation:rule_name()
	local message = messages[nationname]
	local basemessage = "You are playing as the nation '" .. nationname .. "'."
	if message ~= nil then
		notify.player(player,basemessage .. "\n" .. message)
	end
end

function CreateExodii()
	local alive = NationExists("Exodii")
	if alive == nil or alive == false then
		if alerted == false then
			notify.all("The endtimes are upon us...")
			alerted = true
		end
		local nationtype = find.nation_type("Exodii")
		local exodii = edit.create_player("Exo", nationtype, nil)
		SpawnExodii(exodii)
	else
		--DO NOTHING.
	end
end

function CreateExodiiVanguardUnits(exodii, tile, moves, level)
	if exodii == nil then
		exodii = GetNationsPlayer("Exodii")
	end
	homecity = GetCityFromPlayer(exodii, "The Breach")
	local unitname = exodiispawnlist[1][math.random(1,#exodiispawnlist[1])]
	local unittype
	unittype = find.unit_type(unitname)
	local unit = edit.create_unit(exodii, tile, unittype, level, homecity, moves)
	for player in players_iterate() do
		local nation = player.nation
		if nation ~= exodii then
			notify.event(player, tile, E.SCRIPT, "The Exodii receive reinforcements!")
		end
	end
end

function GetCityFromPlayer(player, name)
	for city in player:cities_iterate() do
		if city.name == name then
			return city
		end
	end
	return nil
end

function CreateExodiiUnits(exodii, tile, homecity, moves, level)
	if exodii == nil then
		exodii = GetNationsPlayer("Exodii")
	end
	if homecity == nil then
		homecity = GetCityFromPlayer(exodii, "The Breach")
	end
	local unitname = exodiispawnlist[2][math.random(1,#exodiispawnlist[2])]
	local unittype
	unittype = find.unit_type(unitname)
	local unit = edit.create_unit(exodii, tile, unittype, level, homecity, moves)
	for player in players_iterate() do
		local nation = player.nation
		if nation ~= exodii then
			notify.event(player, tile, E.SCRIPT, "The Exodii receive reinforcements!")
		end
	end
end

function IsSuitableBreachingPoint(tile, exodii)
	print("Running function: 'IsSuitableBreachingPoint()'")
	if exodii == nil then
		exodii = GetNationsPlayer("Exodii")
	end
	local terrain = tile.terrain
	local terrain_name = terrain:rule_name()
	print(tostring(terrain_name))
	if terrain_name == "Ocean" then
		return false
	elseif terrain_name == "Lake" then
		return false
	elseif terrain_name == "Inaccessible" then
		return false
	elseif terrain_name == "Deep Ocean" then
		return false
	end
	if terrain_name == "Wastes" then
		return false
	elseif terrain_name == "Lava Flats" then
		return false
	elseif terrain_name == "Blood Spires" then
		return false
	end
	return true
end

function SpawnExodii(exodii)
	if exodii == nil then
		exodii = GetNationsPlayer("Exodii")
	end
	local tiles = {}
	--local oldtile = find.tile(0,0)
	local newtile
	for oldtile in whole_map_iterate() do
		local terr = oldtile.terrain
		local tname = terr:rule_name()

		for tile in oldtile:square_iterate(1) do
			local check = IsSuitableBreachingPoint(tile, exodii)
			if check == true then
				table.insert(tiles, oldtile)
			end
		end
	end
	newtile = tiles[math.random(#tiles)]
	local city = edit.create_city(exodii, newtile, "The Breach")
	for player in players_iterate() do
		local nation = player.nation
		if nation ~= exodii then
			notify.event(player, newtile, E.SCRIPT, "A mysterious force has begun to invade the world!")
		end
	end
	local vanguard = CreateExodiiVanguardUnits(exodii, newtile, 0, 1)
end

function endtimes_callback(turn, year)
	local targets = {}
	local ManaDiffusionExists
	local reqtechname = "Mana Diffusion"
	for player in players_iterate() do
        if turn == 0 then
            initialize(player)
        end
        local check = player:has_wonder(find.building_type("Eye Of The Gods"))
        if check then
            endtimes = true
            if player:knows_tech(find.tech_type(reqtechname)) then
                ManaDiffusionExists = true
            end
        end
        if endtimes == true then
            if year >= 1000 then
                CreateExodii()
            elseif ManaDiffusionExists then
                CreateExodii()
            elseif forceendtimes == true then
                CreateExodii()
            end
        elseif forceendtimes == true then
            CreateExodii()
        end
    end
    return false
  end
 
  signal.connect('turn_started', 'endtimes_callback')

-- Check if there is certain terrain in ANY CAdjacent tile.
function adjacent_to(tile, terrain_name)
  for adj_tile in tile:circle_iterate(1) do
    if adj_tile.id ~= tile.id then
      local adj_terr = adj_tile.terrain
      local adj_name = adj_terr:rule_name()
      if adj_name == terrain_name then
        return true
      end
    end
  end
  return false
end

-- Check if there is certain terrain in ALL CAdjacent tiles.
function surrounded_by(tile, terrain_name)
  for adj_tile in tile:circle_iterate(1) do
    if adj_tile.id ~= tile.id then
      local adj_terr = adj_tile.terrain
      local adj_name = adj_terr:rule_name()
      if adj_name ~= terrain_name then
        return false
      end
    end
  end
  return true
end

function CreateBeastUnits(tile)
	local beast = GetNationsPlayer("Beast")
    local terr = tile.terrain
    local tname = terr:rule_name()
	local unitname
	if beasts[tname] ~= nil then
		unitname = beasts[tname][math.random(#beasts[tname])]
	end
	local unittype
	if unitname ~= nil then
		unittype = find.unit_type(unitname)
	end
	--local unit = edit.create_unit(beast, tile, unittype, 0, 0)
	local unit = edit.create_unit(beast, tile, unittype, 0, nil, 0)
end

-- Add random labels to the map.
function place_map_labels()
  local rivers = 0
  local deeps = 0
  local oceans = 0
  local lakes = 0
  local swamps = 0
  local glaciers = 0
  local tundras = 0
  local deserts = 0
  local plains = 0
  local grasslands = 0
  local jungles = 0
  local forests = 0
  local hills = 0
  local mountains = 0

  local selected_river = 0
  local selected_deep = 0
  local selected_ocean = 0
  local selected_lake = 0
  local selected_swamp = 0
  local selected_glacier = 0
  local selected_tundra = 0
  local selected_desert = 0
  local selected_plain = 0
  local selected_grassland = 0
  local selected_jungle = 0
  local selected_forest = 0
  local selected_hill = 0
  local selected_mountain = 0

  -- Count the tiles that has a terrain type that may get a label.
  for place in whole_map_iterate() do
    local terr = place.terrain
    local tname = terr:rule_name()

    if place:has_extra("River") then
      rivers = rivers + 1
    elseif tname == "Deep Ocean" then
      deeps = deeps + 1
    elseif tname == "Ocean" then
      oceans = oceans + 1
    elseif tname == "Lake" then
      lakes = lakes + 1
    elseif tname == "Swamp" then
      swamps = swamps + 1
    elseif tname == "Glacier" then
      glaciers = glaciers + 1
    elseif tname == "Tundra" then
      tundras = tundras + 1
    elseif tname == "Desert" then
      deserts = deserts + 1
    elseif tname == "Plains" then
      plains = plains + 1
    elseif tname == "Grassland" then
      grasslands = grasslands + 1
    elseif tname == "Jungle" then
      jungles = jungles + 1
    elseif tname == "Forest" then
      forests = forests + 1
    elseif tname == "Hills" then
      hills = hills + 1
    elseif tname == "Mountains" then
      mountains = mountains + 1
    end
  end

  -- Decide if a label should be included and, in case it should, where.
    if random(1, 100) <= rivers then
      selected_river = random(1, rivers)
    end
    if random(1, 100) <= deeps then
      selected_deep = random(1, deeps)
    end
    if random(1, 100) <= oceans then
      selected_ocean = random(1, oceans)
    end
    if random(1, 100) <= lakes then
      selected_lake = random(1, lakes)
    end
    if random(1, 100) <= swamps then
      selected_swamp = random(1, swamps)
    end
    if random(1, 100) <= glaciers then
      selected_glacier = random(1, glaciers)
    end
    if random(1, 100) <= tundras then
      selected_tundra = random(1, tundras)
    end
    if random(1, 100) <= deserts then
      selected_desert = random(1, deserts)
    end
    if random(1, 100) <= plains then
      selected_plain = random(1, plains)
    end
    if random(1, 100) <= grasslands then
      selected_grassland = random(1, grasslands)
    end
    if random(1, 100) <= jungles then
      selected_jungle = random(1, jungles)
    end
    if random(1, 100) <= forests then
      selected_forest = random(1, forests)
    end
    if random(1, 100) <= hills then
      selected_hill = random(1, hills)
    end
    if random(1, 100) <= mountains then
      selected_mountain = random(1, mountains)
    end

  -- Place the included labels at the location determined above.
  for place in whole_map_iterate() do
    local terr = place.terrain
    local tname = terr:rule_name()
	
    if place:has_extra("River") then
      selected_river = selected_river - 1
      if selected_river == 0 then
		CreateBeastUnits(place)
        if tname == "Hills" then
          place:set_label(_("Grand Canyon"))
        elseif tname == "Mountains" then
          place:set_label(_("Deep Gorge"))
        elseif tname == "Tundra" then
          place:set_label(_("Fjords"))
        elseif random(1, 100) <= 50 then
          place:set_label(_("Waterfalls"))
        else
          place:set_label(_("Travertine Terraces"))
        end
      end
    elseif tname == "Deep Ocean" then
      selected_deep = selected_deep - 1
      if selected_deep == 0 then
		CreateBeastUnits(place)
        if random(1, 100) <= 50 then
          place:set_label(_("Deep Trench"))
        else
          place:set_label(_("Thermal Vent"))
        end
      end
    elseif tname == "Ocean" then
      selected_ocean = selected_ocean - 1
      if selected_ocean == 0 then
		CreateBeastUnits(place)
        if surrounded_by(place, "Ocean") then
          place:set_label(_("Atoll Chain"))
        elseif adjacent_to(place, "Deep Ocean") then
          place:set_label(_("Great Barrier Reef"))
        else
          -- Coast
          place:set_label(_("Great Blue Hole"))
        end
      end
    elseif tname == "Lake" then
      selected_lake = selected_lake - 1
      if selected_lake == 0 then
		CreateBeastUnits(place)
        if surrounded_by(place, "Lake") then
          place:set_label(_("Great Lakes"))
        elseif not adjacent_to(place, "Lake") then
          -- Isolated
          place:set_label(_("Dead Sea"))
        else
          place:set_label(_("Rift Lake"))
        end
      end
    elseif tname == "Swamp" then
      selected_swamp = selected_swamp - 1
      if selected_swamp == 0 then
		CreateBeastUnits(place)
        if not adjacent_to(place, "Swamp") then
          place:set_label(_("Grand Prismatic Spring"))
        elseif adjacent_to(place, "Ocean") then
          place:set_label(_("Mangrove Forest"))
        else
          place:set_label(_("Cenotes"))
        end
      end
    elseif tname == "Glacier" then
      selected_glacier = selected_glacier - 1
      if selected_glacier == 0 then
		CreateBeastUnits(place)
        if surrounded_by(place, "Glacier") then
          place:set_label(_("Ice Sheet"))
        elseif not adjacent_to(place, "Glacier") then
          place:set_label(_("Frozen Lake"))
        elseif adjacent_to(place, "Ocean") then
          place:set_label(_("Glacier Bay"))
        else
          place:set_label(_("Advancing Glacier"))
        end
      end
    elseif tname == "Tundra" then
      selected_tundra = selected_tundra - 1
      if selected_tundra == 0 then
			CreateBeastUnits(place)
			place:set_label(_("Geothermal Area"))
      end
    elseif tname == "Desert" then
      selected_desert = selected_desert - 1
      if selected_desert == 0 then
		CreateBeastUnits(place)
        if surrounded_by(place, "Desert") then
          place:set_label(_("Sand Sea"))
        elseif not adjacent_to(place, "Desert") then
          place:set_label(_("Salt Flat"))
        elseif random(1, 100) <= 50 then
          place:set_label(_("Singing Dunes"))
        else
          place:set_label(_("White Desert"))
        end
      end
    elseif tname == "Plains" then
      selected_plain = selected_plain - 1
      if selected_plain == 0 then
		CreateBeastUnits(place)
        if adjacent_to(place, "Ocean") then
          place:set_label(_("Long Beach"))
        elseif random(1, 100) <= 50 then
          place:set_label(_("Mud Volcanoes"))
        else
          place:set_label(_("Rock Pillars"))
        end
      end
    elseif tname == "Grassland" then
      selected_grassland = selected_grassland - 1
      if selected_grassland == 0 then
		CreateBeastUnits(place)
        if adjacent_to(place, "Ocean") then
          place:set_label(_("White Cliffs"))
        elseif random(1, 100) <= 50 then
          place:set_label(_("Giant Cave"))
        else
          place:set_label(_("Rock Formation"))
        end
      end
    elseif tname == "Jungle" then
      selected_jungle = selected_jungle - 1
      if selected_jungle == 0 then
		CreateBeastUnits(place)
        if surrounded_by(place, "Jungle") then
          place:set_label(_("Rainforest"))
        elseif adjacent_to(place, "Ocean") then
          place:set_label(_("Subterranean River"))
        else
          place:set_label(_("Sinkholes"))
        end
      end
    elseif tname == "Forest" then
      selected_forest = selected_forest - 1
      if selected_forest == 0 then
		CreateBeastUnits(place)
        if adjacent_to(place, "Mountains") then
          place:set_label(_("Stone Forest"))
        elseif random(1, 100) <= 50 then
          place:set_label(_("Sequoia Forest"))
        else
          place:set_label(_("Millenary Trees"))
        end
      end
    elseif tname == "Hills" then
      selected_hill = selected_hill - 1
      if selected_hill == 0 then
		CreateBeastUnits(place)
        if not adjacent_to(place, "Hills") then
          if adjacent_to(place, "Mountains") then
            place:set_label(_("Table Mountain"))
          else
            place:set_label(_("Inselberg"))
          end
        elseif random(1, 100) <= 50 then
          place:set_label(_("Karst Landscape"))
        else
          place:set_label(_("Valley of Geysers"))
        end
      end
    elseif tname == "Mountains" then
      selected_mountain = selected_mountain - 1
      if selected_mountain == 0 then
		CreateBeastUnits(place)
        if surrounded_by(place, "Mountains") then
          place:set_label(_("Highest Peak"))
        elseif not adjacent_to(place, "Mountains") then
          place:set_label(_("Sacred Mount"))
        elseif adjacent_to(place, "Ocean") then
          place:set_label(_("Cliff Coast"))
        elseif random(1, 100) <= 50 then
          place:set_label(_("Active Volcano"))
        else
          place:set_label(_("High Summit"))
        end
      end
    end
  end
  return false
end

signal.connect("map_generated", "place_map_labels")

function action_started_callback(action, actor, target)
	log.normal(_("%s (rule name: %s) performed by %s on %s"),
		action:name_translation(),
		action:rule_name(),
		actor.owner.nation:plural_translation(),
		target.owner.nation:plural_translation()
	)
end
