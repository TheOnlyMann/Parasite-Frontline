import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;

#delete recipes
val recipeItems = [
	<embers:codex>,
	<embers:mini_boiler>,
	<embers:blend_caminite>
] as IIngredient[];
for iName in recipeItems {
	recipes.remove(iName);
}



#Shaped recipes
val shapedRecipes as IIngredient[][][][IItemStack] = {
	<embers:codex> : [
		[
			[<embers:brick_caminite>],
			[<ore:ingotOctine>,<embers:tinker_hammer>.giveBack(<thebetweenlands:items_misc:11>*4)],
			[<embers:brick_caminite>]
		]
	],
	<embers:resonating_bell> : [
		[
			[<ore:ingotSyrmorite>,<ore:bone>,<ore:ingotSyrmorite>],
			[null,<thebetweenlands:rope_item>,<ore:ingotSyrmorite>],
			[<thebetweenlands:items_misc:50>,null,<ore:ingotSyrmorite>]
		]
	],
	<embers:diffraction_barrel> : [
		[
			[null,<ore:ingotSyrmorite>],
			[<ore:ingotOctine>,null,<embers:superheater>],
			[null,<ore:ingotSyrmorite>]
		]
	],
	<embers:tinker_lens> : [
		[
			[<ore:ingotSyrmorite>,<ore:nuggetValonite>],
			[<ore:nuggetValonite>,<thebetweenlands:dentrothyst_shard_green>|<thebetweenlands:dentrothyst_shard_orange>,<ore:nuggetValonite>],
			[<ore:ingotSyrmorite>,<ore:nuggetValonite>]
		]
	],
	<embers:spark_plug> : [
		[
			[<ore:ingotOctine>,null,<ore:ingotOctine>],
			[null,<ore:gemScabyst>],
			[null,<embers:aspectus_silver>]
		]
	],
	<embers:block_lantern> : [
		[
			[<ore:ingotOctine>],
			[<embers:shard_ember>],
			[<ore:ingotSyrmorite>]
		]
	],
	<embers:mini_boiler> : [
		[
			[<ore:ingotSyrmorite>],
			[<thebetweenlands:syrmorite_barrel>],
			[<ore:ingotOctine>]
		]
	],
	<embers:reaction_chamber> : [
		[
			[<ore:blockValonite>],
			[<ore:gemScabyst>],
			[<embers:spark_plug>]
		]
	]
};

for item, userrecipes in shapedRecipes {
	for recipe in userrecipes{
		recipes.addShaped(item,recipe);
	}
}
#Shapeless recipes
val shapelessRecipes as IIngredient[][][IItemStack] = {
	<embers:blend_caminite> * 8 : [
		[<thebetweenlands:items_misc:23>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>, <ore:sand>]
	]
};

for item, userrecipes in shapelessRecipes {
	for recipe in userrecipes{
		recipes.addShapeless(item,recipe);
	}
}

#replace recipes
frigginClass ReplacePair {
  val toReplace as IIngredient;
  val replaceWith as IIngredient;
  
  frigginConstructor(t as IIngredient, r as IIngredient) {
    toReplace = t;
    replaceWith = r;
  }
}


val replacements = {
	<embers:tinker_hammer>|<embers:ember_detector>|<embers:ember_jar>|<embers:superheater>|<embers:archaic_circuit>|<embers:pipe>|<embers:pump>|<embers:block_furnace>|<embers:ember_receiver>|<embers:ember_emitter>|<embers:copper_cell>|<embers:item_pump>|<embers:bin>|<embers:stamper>|<embers:stamper_base>|
	<embers:ember_bore>|<embers:mech_accessor>|<embers:mech_core>|<embers:ember_activator>|<embers:mixer>|<embers:heat_coil>|<embers:ember_gauge>|<embers:beam_splitter>|<embers:ember_relay>|<embers:charger>|<embers:breaker>|<embers:boiler>|<embers:reactor>|<embers:combustor>|<embers:ember_funnel>|<embers:fluid_transfer>|<embers:clockwork_attenuator>|
	<embers:ember_siphon>|<soot:redstone_bin>|<soot:alchemy_gauge>
		: 
	[    ReplacePair(<ore:ingotIron>, <ore:ingotSyrmorite>), ReplacePair(<ore:ingotCopper>, <ore:ingotOctine>), ReplacePair(<ore:dustRedstone>, <ore:gemScabyst>)  ],
	<embers:ember_cartridge>|<embers:ignition_cannon>|<embers:jet_augment>|<embers:large_tank>|<embers:ember_pulser> : 
	[   ReplacePair(<ore:ingotIron>, <ore:ingotOctine>)   ],
	<embers:copper_cell>|<embers:stamper>|<embers:heat_coil>|<embers:crystal_cell>|<embers:alchemy_pedestal>|<embers:auto_hammer>|<embers:boiler>|<embers:inferno_forge>|<embers:stirling>|<soot:insulation> : 
	[    ReplacePair(<ore:blockCopper>, <ore:blockOctine>),ReplacePair(<ore:blockIron>, <ore:blockSyrmorite>)  ],
	<embers:geo_separator> : [    ReplacePair(<ore:blockNickel>, <ore:blockOctine>)  ],
	<embers:block_tank> : [   ReplacePair(<ore:ingotIron>, <thebetweenlands:syrmorite_barrel>), ReplacePair(<ore:plateIron>, <ore:ingotOctine>)   ],
	<embers:pipe>|<embers:bin>|<embers:mechanical_pump>|<embers:fluid_transfer> : [   ReplacePair(<ore:plateIron>, <ore:ingotOctine>)   ],
	<embers:heat_coil>|<embers:ember_gauge>|<embers:charger>|<embers:alchemy_tablet>|<embers:beam_cannon>|<embers:steam_engine> : 
	[   ReplacePair(<ore:plateCopper>, <ore:ingotOctine>)   ],
	<embers:ember_siphon>|<soot:insulation> : [   ReplacePair(<ore:plateNickel>, <thebetweenlands:items_misc:4>)   ],
	<embers:combustor> : [   ReplacePair(<ore:plateCopper>, <thebetweenlands:dentrothyst_shard_green>|<thebetweenlands:dentrothyst_shard_orange>)   ],
	<embers:ember_injector>|<embers:reactor>|<embers:catalyzer> : [   ReplacePair(<ore:plateSilver>, <ore:gemValonite>),ReplacePair(<ore:ingotSilver>, <ore:ingotOctine>)   ],
	<embers:item_pipe>|<embers:item_transfer>|<embers:vacuum> : [   ReplacePair(<ore:plateLead>, <ore:nuggetValonite>), ReplacePair(<ore:ingotLead>, <ore:ingotSyrmorite>)   ],
	<embers:ember_activator>|<embers:fluid_gauge>|<embers:ember_relay>|<embers:steam_engine> : [   ReplacePair(<ore:plateIron>, <ore:ingotSyrmorite>)   ],
	<embers:mech_accessor> : [   ReplacePair(<ore:plateIron>, <ore:nuggetSyrmorite>)   ],
	<embers:beam_splitter>|<embers:charger>|<embers:inferno_forge> : [   ReplacePair(<ore:plateIron>, <thebetweenlands:dentrothyst_shard_green>|<thebetweenlands:dentrothyst_shard_orange>)   ],
	<embers:mixer>|<embers:breaker> : [   ReplacePair(<ore:plateIron>, <thebetweenlands:items_misc:4>)   ],
	<embers:breaker> : [   ReplacePair(<ore:ingotLead>, <ore:ingotOctine>)   ],
	<embers:block_furnace>|<embers:ember_activator>|<embers:cinder_plinth>|<embers:boiler> : [   ReplacePair(<minecraft:furnace>, <thebetweenlands:sulfur_furnace>)   ],
	<embers:tinker_hammer>|<embers:item_dropper> : [    ReplacePair(<ore:ingotLead>, <thebetweenlands:items_misc:23>)  ],
	<embers:fluid_dropper> : [    ReplacePair(<ore:ingotIron>, <thebetweenlands:items_misc:23>)  ],
	<embers:tinker_hammer> : [    ReplacePair(<ore:stickWood>, <thebetweenlands:items_misc:20>)  ],
	<soot:redstone_bin> : [    ReplacePair(<minecraft:iron_trapdoor>, <thebetweenlands:syrmorite_trapdoor>)  ],
	<embers:mech_core> : [    ReplacePair(<minecraft:compass>, <thebetweenlands:dentrothyst_shard_green>|<thebetweenlands:dentrothyst_shard_orange>), ReplacePair(<ore:plateLead>, <ore:nuggetValonite>)  ]

} as ReplacePair[][IIngredient];

for items, pairs in replacements {
  for pair in pairs {
    recipes.replaceAllOccurrences(pair.toReplace, pair.replaceWith, <*>.only(function (item) {
      return !isNull(item) && items.matches(item);
    }));
  }
}

# Replacing normal water with Purified/Clean Water
mods.embers.EmberGeneration.removeBoilerFluid(<liquid:steam>);
mods.embers.EmberGeneration.addBoilerFluid(<liquid:purifiedwater>, <liquid:steam>,2.0,[255,255,255]);
mods.embers.EmberGeneration.addBoilerFluid(<liquid:clean_water>, <liquid:steam>,2.0,[255,255,255]); 

#BLands stamping recipe


mods.embers.Stamper.add(<thebetweenlands:items_misc:26>,<liquid:tar>*250,<embers:stamp_plate>,<thebetweenlands:shimmer_stone>);
mods.embers.Stamper.add(<thebetweenlands:items_misc:23>,<liquid:rubber>*250,<embers:stamp_bar>);


mods.embers.Melter.add(<liquid:oil_soul>*20,<thebetweenlands:wight_heart>, <liquid:fog>*5);
mods.embers.Melter.add(<liquid:oil_soul>*160,<thebetweenlands:items_misc:24>, <liquid:fog>*50);
mods.embers.Melter.add(<liquid:oil_soul>*200,<thebetweenlands:items_misc:25>, <liquid:shallowbreath>*100);

mods.embers.Melter.add(<liquid:copper>*288,<ore:ingotOctine>, <liquid:silver>*32);
mods.embers.Melter.add(<liquid:iron>*288,<ore:ingotSyrmorite>, <liquid:gold>*32);
mods.embers.Melter.add(<liquid:aluminum>*288,<ore:gemValonite>, <liquid:lead>*32);
