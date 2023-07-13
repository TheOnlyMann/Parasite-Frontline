import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import mods.immersiveengineering.Blueprint;

val recipeNames = [
"minecraft:idoll_hp",
"minecraft:idoll_bullet",
"minecraft:idoll_food",
"minecraft:idoll_food1",
"minecraft:idoll_food2",
"minecraft:idoll_food3",
"minecraft:idoll_parts",
"minecraft:idoll_doll_contract",
"minecraft:idoll_doll_repair",
"minecraft:idoll_doll_dismantling",
"minecraft:idoll_doll_report",
"minecraft:idoll_squad_cn",
"minecraft:idoll_bullet_9",
"minecraft:idoll_bullet_45",
"minecraft:idoll_bullet_556",
"minecraft:idoll_bullet_762",
"minecraft:idoll_bullet_12g",
"minecraft:idoll_bullet_57",
"minecraft:idoll_bullet_473kr",
"minecraft:idoll_bullet_40",
"minecraft:idoll_bandage",
"minecraft:idoll_grenade_n",
"minecraft:idoll_grenade_f",
"minecraft:idoll_grenade_s",
"minecraft:idoll_grenade_fb",
"minecraft:armor_pmc_head",
"minecraft:armor_pmc_chest",
"minecraft:armor_pmc_legs",
"minecraft:armor_pmc_feet",
"minecraft:armor_army_h_head",
"minecraft:armor_army_h_chest",
"minecraft:armor_army_h_legs",
"minecraft:armor_army_h_feet",
"minecraft:armor_army_m_head",
"minecraft:armor_army_m_chest",
"minecraft:armor_army_m_legs",
"minecraft:armor_army_m_feet",
"minecraft:gk_kalina",
"minecraft:helianthus",
"minecraft:gk_kryuger",
"minecraft:gk_springfield",
"minecraft:ve_heli",
"minecraft:ve_apc",
"minecraft:ve_bike",
"minecraft:ve_ifv",
"minecraft:ve_truck",
"minecraft:ve_hmmwv",
"minecraft:ve_rhib",
"minecraft:bdoll_crafting",
"minecraft:bdoll_dismantling",
"minecraft:bdoll_doll_restoring_machine",
"minecraft:b_block_rcc_df",
"minecraft:bdoll_frontlinebase",
"minecraft:help_base_headquarters",
"minecraft:help_base_oil_complex",
"minecraft:help_base_desert_base",
"minecraft:help_base_forest_base",
"minecraft:help_base_amusement",
"minecraft:help_base_observation_base",
"minecraft:help_base_sea_launch",
"minecraft:relief_gunpowder"
] as string[];


for rName in recipeNames {
	recipes.removeByRecipeName(rName);
}

recipes.addShaped("CTHMGIOPBox",<hmggirlfront:b_block_box1_iop>,[
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);
recipes.addShapeless("CTHMGpaper",<minecraft:paper>*9,[<hmggirlfront:b_block_box1_iop>]);


recipes.addShaped("CTHMGDormitoryBlock",<hmggirlfront:b_block_rcc_df>,[
[null,<minecraft:quartz>,null],
[<minecraft:quartz>,<ore:stone>,<minecraft:quartz>],
[null,<minecraft:quartz>,null]
]);

recipes.addShaped("CTHMGSandbag",<hmggirlfront:b_block_sandbag_b1_df>,[
[<immersiveintelligence:stone_decoration>,<immersiveintelligence:stone_decoration>],
[<immersiveintelligence:stone_decoration>,<immersiveintelligence:stone_decoration>]
]);

recipes.addShaped("CTHMGBombe",<hmggirlfront:b_block_collapse_bombe>,[
[<hmggirlfront:idoll_collapse_sample>,<hmggirlfront:idoll_collapse_sample>],
[<hmggirlfront:idoll_collapse_sample>,<hmggirlfront:idoll_collapse_sample>]
]);
recipes.addShapeless("CTHMGSample",<hmggirlfront:idoll_collapse_sample>*4,[<hmggirlfront:b_block_collapse_bombe>]);

recipes.addShaped("CTHMGFireextinguisher",<hmggirlfront:b_block_fire_exti_df>,[
[<immersiveengineering:material:13>,<immersiveengineering:material:8>,null],
[<ore:plateAluminum>,<forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}),<ore:plateAluminum>],
[<ore:plateAluminum>,<ore:plateAluminum>,<ore:plateAluminum>]
]);

recipes.addShaped("CTHMGDollCrafter",<hmggirlfront:bdoll_crafting>,[
[<hmggirlfront:idoll_food>,<hmggirlfront:idoll_doll_contract>,<hmggirlfront:idoll_bullet>],
[<hmggirlfront:idoll_parts>,<minecraft:crafting_table>,<hmggirlfront:idoll_hp>],
[<immersiveengineering:metal_decoration0:4>,<immersiveengineering:metal_decoration0:4>,<immersiveengineering:metal_decoration0:4>]
]);

recipes.addShaped("CTHMGDollDismantler",<hmggirlfront:bdoll_dismantling>,[
[<hmggirlfront:idoll_food>,<hmggirlfront:idoll_doll_dismantling>,<hmggirlfront:idoll_bullet>],
[<hmggirlfront:idoll_parts>,<minecraft:crafting_table>,<hmggirlfront:idoll_hp>],
[<immersiveengineering:metal_decoration0:4>,<immersiveengineering:metal_decoration0:4>,<immersiveengineering:metal_decoration0:4>]
]);

recipes.addShaped("CTHMGDollRestorer",<hmggirlfront:bdoll_doll_restoring_machine>,[
[<hmggirlfront:idoll_food>,<hmggirlfront:idoll_core>,<hmggirlfront:idoll_bullet>],
[<hmggirlfront:idoll_parts>,<minecraft:crafting_table>,<hmggirlfront:idoll_hp>],
[<immersiveengineering:metal_decoration0:5>,<immersiveengineering:metal_decoration0:5>,<immersiveengineering:metal_decoration0:5>]
]);

recipes.addShaped("CTHMGHESCO",<hmggirlfront:b_block_hesco_df>*4,[
[<ore:woolGreen>,<ore:barsIron>,<ore:woolGreen>],
[<ore:barsIron>,<ore:gravel>,<ore:barsIron>],
[<ore:woolGreen>,<ore:barsIron>,<ore:woolGreen>]
]);

val recipeBlueprintDoll = {
	<hmggirlfront:b_block_416nui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:11>,<minecraft:wool:3>,<minecraft:wool:7>,<minecraft:wool:13>],
	<hmggirlfront:b_block_g36nui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:4>,<minecraft:wool:8>,<minecraft:wool:7>,<minecraft:wool:14>],
	<hmggirlfront:b_block_kalinui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:1>,<minecraft:wool:4>,<minecraft:wool:12>,<minecraft:wool:14>],
	<hmggirlfront:b_block_mg36nui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:14>,<minecraft:wool:15>,<minecraft:wool:7>,<minecraft:wool:4>],
	<hmggirlfront:b_block_roprowler> : [<minecraft:string> * 4,<minecraft:wool:7>,<minecraft:wool:4>,<minecraft:wool:9>,<minecraft:wool:14>,<minecraft:wool:15>],
	<hmggirlfront:b_block_soptwonui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:14>,<minecraft:wool:15>,<minecraft:wool:7>,<minecraft:wool:6>],
	<hmggirlfront:b_block_wa2000nui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:2>,<minecraft:wool:10>,<minecraft:wool:12>,<minecraft:wool:14>],
	<hmggirlfront:b_block_rfbnui> : [<minecraft:string> * 4,<minecraft:wool>,<minecraft:wool:13>,<minecraft:wool:5>,<minecraft:wool:4>,<minecraft:wool:8>]
} as IIngredient[][IItemStack];
for key, value in recipeBlueprintDoll {
	key.asBlock().definition.hardness=0.3;
	mods.immersiveengineering.Blueprint.addRecipe("DollsFrontLine Plushies",key,value);
}
val recipeBlueprintDecoration1 = {
	<hmggirlfront:b_block_laptop_df> : [<hmggirlfront:idoll_l_performance_circuit>,<ore:plateSteel>*2,<ore:blockGlassColorless>],
	<hmggirlfront:b_block_monitor1_df> : [<hmggirlfront:idoll_l_performance_circuit>,<ore:plateSteel>,<ore:blockGlassColorless>],
	<hmggirlfront:b_block_toughbook_df> : [<hmggirlfront:idoll_h_performance_circuit>,<ore:plateSteel>*2,<ore:blockGlassColorless>],
	<hmggirlfront:b_block_sincgars_df> : [<ore:dyeGreen>,<ore:plateSteel>,<hmggirlfront:idoll_h_performance_circuit>],
	<hmggirlfront:b_block_server_cont1_df> : [<ore:dyeGreen>,<ore:blockSheetmetalSteel>,<ore:circuitBasic>],
	<hmggirlfront:b_block_server_cont2_df> : [<ore:dyeGreen>,<ore:blockSheetmetalSteel>,<ore:circuitAdvanced>],
	<hmggirlfront:b_block_odunit_df> : [<immersiveengineering:sheetmetal:1>,<ore:plateAluminum>*4],
	<hmggirlfront:b_block_t_wall1_df>*2 : [<engineersdecor:rebar_concrete>,<ore:dyeLightGray>],
	<hmggirlfront:b_block_t_wall2_df>*2 : [<engineersdecor:rebar_concrete>,<ore:dyeLightGray>,<ore:dyeWhite>]
} as IIngredient[][IItemStack];
for key, value in recipeBlueprintDecoration1 {
	mods.immersiveengineering.Blueprint.addRecipe("DollsFrontLine Metal Decoration",key,value);
}
val recipeBlueprintDecoration2 = {
	<hmggirlfront:b_block_ammobox1_df> : [<hmggirlfront:idoll_bullet>*16],
	<hmggirlfront:b_block_jutebag_df> : [<hmggirlfront:idoll_food>*7],
	<hmggirlfront:b_block_epiphyllum1> : [<hmggirlfront:idoll_core>,<ore:dyeLightBlue>,<ore:dyeGreen>],
	<hmggirlfront:b_block_epiphyllum2> : [<hmggirlfront:idoll_core>,<ore:dyeLightBlue>,<ore:dyeGreen>],
	<hmggirlfront:b_block_medbag_df> : [<hmggirlfront:idoll_bandage>,<ore:fabricHemp>*4],
	<hmggirlfront:b_block_mil_cont1_df> : [<ore:blockSheetmetalSteel>,<ore:chest>],
	<hmggirlfront:b_block_mil_cont2_df> : [<ore:dyeGreen>,<ore:blockSheetmetalSteel>,<ore:chest>]
} as IIngredient[][IItemStack];
for key, value in recipeBlueprintDecoration2 {
	mods.immersiveengineering.Blueprint.addRecipe("DollsFrontLine Decoration",key,value);
}

recipes.addShaped("CTHMGBlueprintDoll",<immersiveengineering:blueprint>.withTag({blueprint: "DollsFrontLine Plushies"}),[
[<ore:wool>,<ore:string>,<ore:wool>],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);
recipes.addShaped("CTHMGBlueprintMetalDecoration",<immersiveengineering:blueprint>.withTag({blueprint: "DollsFrontLine Metal Decoration"}),[
[<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);
recipes.addShaped("CTHMGBlueprintDecoration",<immersiveengineering:blueprint>.withTag({blueprint: "DollsFrontLine Decoration"}),[
[null,<hmggirlfront:idoll_doll_dismantling>,null],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);

recipes.addShapeless("CTHMGDismantleKit",<hmggirlfront:idoll_doll_dismantling>,[<immersiveengineering:tool>,<immersiveengineering:tool:1>]);

val recipeBlueprintGFstuff = {
	<hmggirlfront:doll_tool_combatknife>: [<ore:ingotIron>*2,<ore:stickIron>],
	<hmggirlfront:doll_tool_mshovel>: [<ore:stickIron>*2,<ore:plateIron>],
	<hmggirlfront:doll_tool_mpickaxe>: [<ore:stickIron>*2,<ore:ingotIron>*2,<ore:nuggetIron>],
	<hmggirlfront:doll_tool_maxe>: [<ore:stickIron>*2,<ore:plateIron>*2,<ore:ingotIron>],
	<hmggirlfront:armor_gk_uniform_head>: [<ore:fabricHemp>*5,<ore:dyeRed>,<ore:dyeBlack>,<ore:dyeYellow>],
	<hmggirlfront:armor_gk_uniform_chest>: [<ore:fabricHemp>*8,<ore:dyeRed>*3,<ore:dyeYellow>],
	<hmggirlfront:armor_gk_uniform_legs>: [<ore:fabricHemp>*7,<ore:dyeBlack>*2],
	<hmggirlfront:armor_gk_uniform_feet>: [<ore:fabricHemp>*4,<ore:dyeBlack>],
	<hmggirlfront:idoll_squad_cn>.withTag({squadid: 1}): [<hmggirlfront:idoll_l_performance_circuit>,<ore:dustRedstone>,<ore:circuitBasic>,<ore:stickIron>,<ore:plateIron>*2]
} as IIngredient[][IItemStack];
for key, value in recipeBlueprintGFstuff {
	mods.immersiveengineering.Blueprint.addRecipe("DollsFrontLine Griffon Basics",key,value);
}
recipes.addShaped("CTHMGBlueprintGriffonBasics",<immersiveengineering:blueprint>.withTag({blueprint: "DollsFrontLine Griffon Basics"}),[
[null,<hmggirlfront:idoll_doll_contract>,null],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);

recipes.addShaped("CTHMGPMCArmorHead",<hmggirlfront:armor_pmc_head>,[
[<ore:plateDuraluminium>,<ore:plateDuraluminium>,<ore:plateDuraluminium>],
[<ore:plateDuraluminium>,<ore:singularityHumanresources>,<ore:plateDuraluminium>]
]);
recipes.addShaped("CTHMGPMCArmorChest",<hmggirlfront:armor_pmc_chest>,[
[<ore:plateDuraluminium>,<ore:singularityHumanresources>,<ore:plateDuraluminium>],
[<ore:plateDuraluminium>,<ore:plateDuraluminium>,<ore:plateDuraluminium>],
[<ore:plateDuraluminium>,<ore:plateDuraluminium>,<ore:plateDuraluminium>]
]);
recipes.addShaped("CTHMGPMCArmorLegs",<hmggirlfront:armor_pmc_legs>,[
[<ore:plateDuraluminium>,<ore:plateDuraluminium>,<ore:plateDuraluminium>],
[<ore:plateDuraluminium>,<ore:singularityHumanresources>,<ore:plateDuraluminium>],
[<ore:plateDuraluminium>,null,<ore:plateDuraluminium>]
]);
recipes.addShaped("CTHMGPMCArmorFeet",<hmggirlfront:armor_pmc_feet>,[
[<ore:plateDuraluminium>,<ore:singularityHumanresources>,<ore:plateDuraluminium>],
[<ore:plateDuraluminium>,null,<ore:plateDuraluminium>]
]);

val pmcarmorarray = [
<hmggirlfront:armor_pmc_head>,
<hmggirlfront:armor_pmc_chest>,
<hmggirlfront:armor_pmc_legs>,
<hmggirlfront:armor_pmc_feet>
] as IItemStack[];
val armyHarmorarray = [
<hmggirlfront:armor_army_h_head>,
<hmggirlfront:armor_army_h_chest>,
<hmggirlfront:armor_army_h_legs>,
<hmggirlfront:armor_army_h_feet>
] as IItemStack[];
val armyMarmorarray = [
<hmggirlfront:armor_army_m_head>,
<hmggirlfront:armor_army_m_chest>,
<hmggirlfront:armor_army_m_legs>,
<hmggirlfront:armor_army_m_feet>
] as IItemStack[];

for i in 0 to 4 {
	recipes.addShaped("CTHMG"+armyHarmorarray[i].displayName,armyHarmorarray[i],[
	[<ore:singularityDuraluminium>,<ore:dyeGreen>,<ore:singularityDuraluminium>],
	[<hmggirlfront:idoll_h_performance_circuit>,pmcarmorarray[i],<hmggirlfront:idoll_h_performance_circuit>],
	[<ore:singularityHumanresources>,<ore:dyeGreen>,<ore:singularityHumanresources>]
	]);
	recipes.addShaped("CTHMG"+armyMarmorarray[i].displayName,armyMarmorarray[i],[
	[<ore:dyeGreen>,<ore:singularityDuraluminium>,<ore:dyeGreen>],
	[<hmggirlfront:idoll_l_performance_circuit>,pmcarmorarray[i],<hmggirlfront:idoll_l_performance_circuit>],
	[<ore:dyeGreen>,<ore:singularityHumanresources>,<ore:dyeGreen>]
	]);
}

recipes.addShaped("CTHMGBandage",<hmggirlfront:idoll_bandage>,[
[null,<ore:fabricHemp>,null],
[<ore:fabricHemp>,<ore:ingotGold>,<ore:fabricHemp>],
[null,<ore:fabricHemp>,null]
]);


recipes.addShaped("CTHMGGrenadeN",<hmggirlfront:idoll_grenade_n>,[
[<ore:gunpowder>],
[<ore:gunpowder>],
[<immersiveengineering:material:9>]
]);
recipes.addShaped("CTHMGGrenadeF",<hmggirlfront:idoll_grenade_f>,[
[null,<ore:gunpowder>,null],
[<ore:dustBlaze>,<ore:gunpowder>,<ore:dustBlaze>],
[null,<immersiveengineering:material:9>,null]
]);
recipes.addShaped("CTHMGGrenadeS",<hmggirlfront:idoll_grenade_s>,[
[null,<ore:gunpowder>,null],
[<ore:dyeWhite>,<ore:gunpowder>,<ore:dyeWhite>],
[null,<immersiveengineering:material:9>,null]
]);
recipes.addShaped("CTHMGGrenadeFB",<hmggirlfront:idoll_grenade_fb>,[
[null,<ore:gunpowder>,null],
[<ore:dustGlowstone>,<ore:gunpowder>,<ore:dustGlowstone>],
[null,<immersiveengineering:material:9>,null]
]);

recipes.addShapedMirrored("CTHMGContract",<hmggirlfront:idoll_doll_contract>,[
[<hmggirlfront:idoll_hp>,<ore:paper>,<hmggirlfront:idoll_bullet>],
[<ore:paper>,<ore:gemDiamond>,<ore:paper>],
[<hmggirlfront:idoll_food>,<ore:paper>,<hmggirlfront:idoll_parts>]
]);
recipes.addShapedMirrored("CTHMGRepair",<hmggirlfront:idoll_doll_repair>,[
[<ore:blockGold>,<hmggirlfront:idoll_parts>,<ore:blockGold>],
[<hmggirlfront:idoll_parts>,<hmggirlfront:idoll_doll_contract>,<hmggirlfront:idoll_parts>],
[<ore:blockGold>,<hmggirlfront:idoll_parts>,<ore:blockGold>]
]);
recipes.addShapedMirrored("CTHMGReport",<hmggirlfront:idoll_doll_report>,[
[<ore:gemDiamond>,<hmggirlfront:idoll_hp>,<ore:gemDiamond>],
[<hmggirlfront:idoll_hp>,<ore:paper>,<hmggirlfront:idoll_hp>],
[<ore:gemDiamond>,<hmggirlfront:idoll_hp>,<ore:gemDiamond>]
]);

recipes.addShaped("CTHMGHumanResources",<hmggirlfront:idoll_hp>,[
[<ore:ingotElectrum>,<ore:fabricHemp>,null],
[<ore:fabricHemp>,<ore:ingotElectrum>,<ore:fabricHemp>],
[null,<ore:fabricHemp>,<ore:ingotElectrum>]
]);
recipes.addShapeless("CTHMGItemAmmunition",<hmggirlfront:idoll_bullet>,[<immersiveengineering:bullet>,<ore:gunpowder>,<immersiveengineering:bullet>,<ore:gunpowder>,<ore:ingotIron>,<ore:gunpowder>,<immersiveengineering:bullet>,<ore:gunpowder>,<immersiveengineering:bullet>]);

var itemcount = 1;
for item in game.items {

  if item.id == "hmggirlfront:idoll_food" || item.id == "minecraft:air" || item.owner == "thebetweenlands"{
    continue;
  }
  //print(item.id + " is bad");
  var stack = item.defaultInstance;
  var deternum = stack.saturation * stack.healAmount;
  var useditem = <ore:plateDuraluminium>;
  if stack.isFood{
    if deternum < 20 {
        useditem = <ore:plateAluminum>;
    }
    recipes.addShaped("CTHMGItemDistribution" + itemcount,<hmggirlfront:idoll_food> * min(max(1,pow(deternum,0.75)),64),[
    [null,useditem,null],
    [useditem,stack,useditem],
    [null,useditem,null]
    ]);
	itemcount = itemcount + 1;
    // do stuff with `stack.saturation` and `stack.healAmount`
  }
}
recipes.addShaped("CTHMGItemParts1",<hmggirlfront:idoll_parts> * 3,[
[null,<ore:gearIron>,null],
[<ore:gearIron>,<immersiveintelligence:wrench>,<ore:gearIron>],
[null,<ore:gearIron>,null]
]);
recipes.addShaped("CTHMGItemParts2",<hmggirlfront:idoll_parts> * 6,[
[null,<ore:gearSteel>,null],
[<ore:gearSteel>,<immersiveintelligence:wrench>,<ore:gearSteel>],
[null,<ore:gearSteel>,null]
]);


recipes.addShaped("CTHMGbullet9",<hmggirlfront:idoll_bullet_9>,[
[null,<ore:nuggetBrass>,null],
[null,<ore:gunpowder>,null],
[null,<immersiveengineering:bullet>,null]
]);
recipes.addShaped("CTHMGbullet45",<hmggirlfront:idoll_bullet_45>,[
[null,<ore:nuggetBrass>,null],
[<ore:gunpowder>,null,<ore:gunpowder>],
[null,<immersiveengineering:bullet>,null]
]);
recipes.addShaped("CTHMGbullet556",<hmggirlfront:idoll_bullet_556>,[
[null,<ore:nuggetSteel>,null],
[<ore:gunpowder>,null,<ore:gunpowder>],
[null,<immersiveintelligence:ammo_casing:5>,null]
]);
recipes.addShaped("CTHMGbullet762",<hmggirlfront:idoll_bullet_762>,[
[null,<ore:nuggetSteel>,null],
[<ore:gunpowder>,<ore:gunpowder>,<ore:gunpowder>],
[null,<immersiveintelligence:ammo_casing:4>,null]
]);
recipes.addShaped("CTHMGbullet12g",<hmggirlfront:idoll_bullet_12g>,[
[<ore:nuggetLead>,<ore:nuggetLead>,<ore:nuggetLead>],
[<ore:gunpowder>,<ore:nuggetLead>,<ore:gunpowder>],
[<ore:gunpowder>,<immersiveintelligence:ammo_casing:3>,<ore:gunpowder>]
]);
recipes.addShaped("CTHMGbullet57",<hmggirlfront:idoll_bullet_57>,[
[null,<ore:nuggetTungsten>,null],
[null,<ore:gunpowder>,null],
[null,<immersiveintelligence:ammo_casing:6>,null]
]);
recipes.addShaped("CTHMGbullet473kr",<hmggirlfront:idoll_bullet_473kr> * 5,[
[<ore:gunpowder>,<ore:stickTungsten>,<ore:gunpowder>],
[<ore:materialHMX>,<ore:gunpowder>,<ore:materialHMX>],
[<ore:gunpowder>,<ore:materialHMX>,<ore:gunpowder>]
]);
recipes.addShaped("CTHMGbullet40",<hmggirlfront:idoll_bullet_40>,[
[<ore:gunpowder>,<ore:gunpowder>,<ore:gunpowder>],
[<ore:materialHMX>,<ore:gunpowder>,<ore:materialHMX>],
[<ore:materialHMX>,<immersiveintelligence:ammo_casing:2>,<ore:materialHMX>]
]);

val recipeBlueprintBulletCraft = {
	<hmggirlfront:idoll_bullet>: [<immersiveengineering:tool>,<ore:plateBrass>,<ore:gunpowder>*4,<ore:nuggetIron>*4],
	<hmggirlfront:idoll_bullet_9> * 2: 		[<hmggirlfront:idoll_bullet> * 1,	<hmggirlfront:idoll_bullet_9>],
	<hmggirlfront:idoll_bullet_45> * 2: 	[<hmggirlfront:idoll_bullet> * 1,	<hmggirlfront:idoll_bullet_45>],
	<hmggirlfront:idoll_bullet_556> * 3: 	[<hmggirlfront:idoll_bullet> * 2,	<hmggirlfront:idoll_bullet_556>],
	<hmggirlfront:idoll_bullet_762> * 4: 	[<hmggirlfront:idoll_bullet> * 3,	<hmggirlfront:idoll_bullet_762>],
	<hmggirlfront:idoll_bullet_12g> * 4: 	[<hmggirlfront:idoll_bullet> * 4,	<hmggirlfront:idoll_bullet_12g>],
	<hmggirlfront:idoll_bullet_473kr> * 2: 	[<hmggirlfront:idoll_bullet> * 3,	<hmggirlfront:idoll_bullet_473kr>],
	<hmggirlfront:idoll_bullet_40> * 2: 	[<hmggirlfront:idoll_bullet> * 16,	<hmggirlfront:idoll_bullet_40>],
} as IIngredient[][IItemStack];
for key, value in recipeBlueprintBulletCraft {
	mods.immersiveengineering.Blueprint.addRecipe("DollsFrontLine Ammunition Management",key,value);
}
recipes.addShaped("CTHMGBlueprintAmmunitionManagement",<immersiveengineering:blueprint>.withTag({blueprint: "DollsFrontLine Ammunition Management"}),[
[<hmggirlfront:idoll_bullet>,<hmggirlfront:idoll_bullet>,<hmggirlfront:idoll_bullet>],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);