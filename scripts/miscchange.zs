import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;


val recipeNames = [
	"minecraft:dollam_bullet_ap2",
	"minecraft:dollam_bullet_ap3",
	"minecraft:dollam_bullet_hv2",
	"minecraft:dollam_bullet_hv3",
	"minecraft:dollam_bullet_hp2",
	"minecraft:dollam_bullet_hp3",
	"minecraft:dollam_bullet_backshot2",
	"minecraft:dollam_bullet_backshot3",
	"minecraft:dollam_bullet_srag2",
	"minecraft:dollam_bullet_srag3",
	"minecraft:dollam_bullet_frag2",
	"minecraft:dollam_bullet_frag3",
	"minecraft:dollam_frame_m2",
	"minecraft:dollam_frame_m3",
	"minecraft:dollam_frame_x2",
	"minecraft:dollam_frame_x3",
	"minecraft:dollam_bodyarmor2",
	"minecraft:dollam_bodyarmor3",
	"minecraft:dollam_class_assalt",
	"minecraft:dollam_class_medic",
	"minecraft:dollam_class_support",
	"minecraft:dollam_class_scout",
	"minecraft:dollam_class_torcher",
	"minecraft:idoll_h_performance_circuit",
	"immersivetech:metal_trash/trash_item",
	"immersivetech:metal_trash/trash_fluid",
	"immersivetech:metal_trash/trash_energy",
	"singularities:recipe0",
	"timeisup:timer_ward_head_recipe",
	"immersiveintelligence:blueprints/vulcanizer_molds",
	"adminshop:shop",
	"adminshop:seller",
	"adminshop:atm",
	"adminshop:buyer",
	"srparasites:lureblock",
	"srparasites:lureblock1",
	"srparasites:lureblock2",
	"srparasites:lureblock3",
	"srparasites:lureblock4",
	"srparasites:lureblock5",
	"srparasites:lureblock6",
	"srparasites:purifierblock"
] as string[];
for rName in recipeNames {
	recipes.removeByRecipeName(rName);
}

/*

        iron_singularity, ingotIron, 9001, singularities:singularity:0
        gold_singularity, ingotGold, 9001, singularities:singularity:1
        lapis_singularity, gemLapis, 9001, singularities:singularity:2
        redstone_singularity, dustRedstone, 9001, singularities:singularity:3
        quartz_singularity, gemQuartz, 9001, singularities:singularity:4
        copper_singularity, ingotCopper, 9001, singularities:singularity:5
        tin_singularity, ingotTin, 9001, singularities:singularity:6
        lead_singularity, ingotLead, 9001, singularities:singularity:7
        silver_singularity, ingotSilver, 9001, singularities:singularity:8
        nickel_singularity, ingotNickel, 9001, singularities:singularity:9
		
		
        iron, 0xBFBFBF, 0x7F7F7F, 1, 0
        gold, 0xE8EF23, 0xdba213, 1, 1
        lapis, 0x5a82e2, 0x224baf, 1, 2
        redstone, 0xDF0000, 0x900000, 1, 3
        quartz, 0xeeebe6, 0x94867d, 1, 4
        copper, 0xE47200, 0x89511A, 1, 5
        tin, 0xA5C7DE, 0x9BA9B2, 1, 6
        lead, 0x444072, 0x3E3D4E, 1, 7
        silver, 0xF9F9F9, 0xD5D5D5, 1, 8
        nickel, 0xDEE187, 0xC4C698, 1, 9

*/

<solcarrot:food_book>.addTooltip(format.darkGreen("Eat nutricious and get healthy!"));
<solcarrot:food_book>.addTooltip("Eat too much and you'll be slow");
<solcarrot:food_book>.addTooltip("Eat just right and you'll feel great");
<solcarrot:food_book>.addShiftTooltip("Hunger heals you faster, 40%~60%","Well Fed: Eat Grains!");
<solcarrot:food_book>.addShiftTooltip("Deals more melee damage, 40%~60%","Strength: Eat Proteins!");
<solcarrot:food_book>.addShiftTooltip("Takes 20% less damage, 40%~60%","Resistance: Eat Dairies!");
<solcarrot:food_book>.addShiftTooltip("Dashes further, 40%~60%","Forceful: Eat Vegetables!");
<solcarrot:food_book>.addShiftTooltip("Less chance to get infected, 40%~60%","Repel: Eat Fruits!");
<solcarrot:food_book>.addShiftTooltip("+2 Max heart per criteria achieved, 45%~55%","Toughness: Eat all of em!");
<solcarrot:food_book>.addShiftTooltip("Cannot dash, 80%~100%","Sluggish: dont eat much!");

for item in <minecraft:wool>.definition.subItems{
	item.addTooltip("Use it in a filter to filter out toxic sulfur chemicals out of the air.");
}
<minecraft:paper>.addTooltip("Use it in a filter to filter out toxic nitrate chemicals out of the air.");
<quark:thatch>.addTooltip("Use it in a filter to filter out toxic carbon chemicals out of the air.");

<singularities:singularity:13>.addTooltip("Use it in a filter to filter out toxic carbon chemicals out of the air.");
<singularities:singularity:14>.addTooltip("Use it in a filter to filter out toxic sulfur chemicals out of the air.");
<singularities:singularity:15>.addTooltip("Use it in a filter to filter out toxic nitrate chemicals out of the air.");


<embers:ember_bore>.addShiftTooltip("Only works on Betweenlands.","Looks like only the deepset part of the land beyond the tree is capable to unearth precious minerals using this machine.");

<thermalexpansion:device:*>.addShiftTooltip("Thermal Dynamics, Thermal Expansion and Thermal Innovation machines only work on the Nether.","Looks like only the land corrupted beyond unknown would have the ambience to run these machines.");
<thermalexpansion:dynamo:*>.addShiftTooltip("Thermal Dynamics, Thermal Expansion and Thermal Innovation machines only work on the Nether.","Looks like only the land corrupted beyond unknown would have the ambience to run these machines.");


<hmggirlfront:dollgun_gr_g11>.displayName = "Gr_G11";


<hmggirlfront:idoll_parts>.addTooltip("Can be used to Emergency heal out of commission T-Dolls.");
<minecraft:iron_axe>.addTooltip("Can be used to duplicate the gun from a T-Doll.");
<hmggirlfront:idoll_doll_report>.addTooltip("Used to gain 20 EXP on T-Dolls.");
<minecraft:feather>.addTooltip("Used to toggle guns on T-Dolls.");
<minecraft:paper>.addTooltip("Used to toggle status bar on T-Dolls.");
<hmggirlfront:idoll_doll_contract>.addTooltip("Used in doll crafting machine to make T-Doll Cores.");
<hmggirlfront:idoll_doll_rapidcontract>.addTooltip("Used in doll crafting machine to instantly finish making T-Doll Cores.");
<hmggirlfront:bdoll_crafting>.addTooltip("Used to craft T-Dolls.");
<hmggirlfront:bdoll_doll_restoring_machine>.addTooltip("Used to restore T-Dolls from guns using cores.");


<immersiveengineering:railgun>.addTooltip("The electrified rods seem to bypass the parasite's adapting nature.");
<hmggirlfront:dollgun_ibcboss02sw>.addTooltip("The powered blades seem to resonate.. It might be able to pass around the parasite's adaptability.");
<hmggirlfront:idoll_bullet_57>.addTooltip("It has penetrating powers from the tungsten core.. In your hands, it might be enough to deny the parasites adapting to it.");

<thebetweenlands:swamp_talisman>.addTooltip("Use it on a tree sapling to open up a portal to another world, resonating with darkness..");

recipes.addShaped("ParasiteCompression",<singularities:compressor>,[
[<ore:ingotSteel>,<minecraft:piston>,<ore:ingotSteel>],
[<ore:plateSteel>,<hmggirlfront:idoll_parts>,<ore:plateSteel>],
[<ore:ingotSteel>,<minecraft:piston>,<ore:ingotSteel>]
]);


recipes.addShaped("CTHMGcircuit",<hmggirlfront:idoll_h_performance_circuit>,[
[<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>],
[<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>],
[<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>,<hmggirlfront:idoll_l_performance_circuit>]
]);


val chiparray = [
<hmggirlfront:dollam_class_assalt>,
<hmggirlfront:dollam_class_medic>,
<hmggirlfront:dollam_class_support>,
<hmggirlfront:dollam_class_scout>,
<hmggirlfront:dollam_class_torcher>
] as IItemStack[];

val maincraft = [
<hmggirlfront:idoll_core>,
<hmggirlfront:idoll_doll_repair>,
<hmggirlfront:b_block_ammobox1_df>,
<immersiveengineering:toolupgrade:8>,
<immersiveengineering:metal_decoration2:4>
] as IItemStack[];

val sidecraft = [
<hmggirlfront:idoll_doll_report>,
<hmggirlfront:idoll_bandage>,
<singularities:singularity:11>,
<minecraft:spectral_arrow>,
<singularities:singularity:10>
] as IItemStack[];

val desc = [
"Resilent to more attacks.",
"Emergency heals out of commission T-Dolls around one.",
"Replenishes ammo of T-Dolls around one.",
"Marks targetted enemies with a glow.",
"Places torches on dark places."
] as string[];



for i in 0 to 5 {
	recipes.addShaped("CTHMG"+chiparray[i].displayName,chiparray[i],[
	[maincraft[i],<singularities:singularity:12>,maincraft[i]],
	[sidecraft[i],maincraft[i],sidecraft[i]],
	[maincraft[i],<hmggirlfront:idoll_doll_contract>,maincraft[i]]
	]);
	chiparray[i].addTooltip(desc[i]);
}



recipes.addShaped("GFLAirdropStore",<delivery:store_tech>,[
[<ore:plateTungsten>,<hmggirlfront:idoll_squad_cn>,<ore:plateTungsten>],
[<ore:circuitElite>,<hmggirlfront:idoll_h_performance_circuit>,<ore:circuitAdvanced>],
[<ore:plateDuraluminium>,<ore:plateDuraluminium>,<ore:plateDuraluminium>]
]);


val store_Default = "_store";

mods.Delivery.Store.setStoreIcon(store_Default, <hmggirlfront:gk_kryuger>);


mods.Delivery.Store.addTrade(<hmggirlfront:ve_bike>).addOre("singularityIron", 1).addOre("tireRubber", 2).addItem(<immersiveengineering:jerrycan>.withTag({Fluid: {FluidName: "gasoline", Amount: 10000}}));
mods.Delivery.Store.addTrade(<hmggirlfront:ve_rhib>).addOre("singularityAluminium", 1).addOre("materialRubber", 12).addItem(<immersiveengineering:jerrycan>.withTag({Fluid: {FluidName: "diesel", Amount: 10000}}));
mods.Delivery.Store.addTrade(<hmggirlfront:ve_hmmwv>).addOre("singularitySteel", 1).addOre("tireRubber", 4).addItem(<immersiveengineering:jerrycan>.withTag({Fluid: {FluidName: "gasoline", Amount: 10000}}));
mods.Delivery.Store.addTrade(<hmggirlfront:ve_truck>).addOre("singularitySteel", 1).addOre("tireRubber", 6).addItem(<immersiveengineering:jerrycan>.withTag({Fluid: {FluidName: "diesel", Amount: 10000}}));

mods.Delivery.Store.addTrade(<hmggirlfront:ve_apc>).addOre("tireRubber", 8).addOre("singularitySteel", 1).addOre("singularityDuraluminium", 1).addOre("singularityAmmunition", 8);
<hmggirlfront:ve_apc>.addTooltip("Vehicle Weapon Change Kit can be used on this vehicle to change the weapon.");
mods.Delivery.Store.addTrade(<hmggirlfront:ve_ifv>).addOre("singularitySteel", 1).addOre("singularityTungsten", 1).addOre("singularityHumanresources", 4).addOre("singularityAmmunition", 8);
<hmggirlfront:ve_ifv>.addTooltip("Vehicle Weapon Change Kit can be used on this vehicle to change the weapon.");
mods.Delivery.Store.addTrade(<hmggirlfront:ve_heli>).addOre("singularityAluminium", 1).addOre("singularityDuraluminium", 1).addOre("singularityHumanresources", 16).addOre("singularityAmmunition", 32);
<hmggirlfront:ve_heli>.addTooltip("Vehicle Weapon Change Kit can be used on this vehicle to change the weapon.");

<delivery:store_tech>.addTooltip("Can be used to airdrop vehicles and items at a certain price!");


mods.Delivery.Store.addTrade(<srparasites:biomepurifier>,<immersiveengineering:metal_device0:2>*8,<immersiveengineering:metal_device1:8>);


<minecraft:lingering_potion>.withTag({Potion: "srparasites:res"}).displayName = "Anti-Parasitic Molotov Cocktail";


//temp fix for vulcanizer molds not being craftable
recipes.addShaped("blueprints/vulcanizer_molds",<immersiveengineering:blueprint>.withTag({blueprint: "vulcanizer_molds"}),[
[null,<immersiveintelligence:rubber_sapling>,null],
[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]
]);

<timeisup:timer_ward_head>.addTooltip("Can be used to craft Timer ward, that stops your timer progress in hostile enviornments.");

recipes.addShaped("timerwardhead",<timeisup:timer_ward_head>,[
[null,<ore:enderpearl>,null],
[<ore:enderpearl>,<ore:netherStar>,<ore:enderpearl>],
[null,<ore:enderpearl>,null]
]);


recipes.addShaped("adshop",<adminshop:shop>,[
[null,<ore:blockGlassColorless>,null],
[null,<hmggirlfront:idoll_h_performance_circuit>,null],
[<ore:blockSheetmetalSteel>,<ore:chestEnder>,<ore:blockSheetmetalSteel>]
]);
recipes.addShaped("adseller",<adminshop:seller>,[
[<ore:sheetmetalDuraluminium>,<ore:enderpearl>,<ore:sheetmetalDuraluminium>],
[<immersiveengineering:metal_device1:6>,<delivery:store_tech>,<immersiveengineering:conveyor>],
[<ore:sheetmetalDuraluminium>,<ore:sheetmetalDuraluminium>,<ore:sheetmetalDuraluminium>]
]);
recipes.addShapeless("adatmto",<adminshop:shop>,[<adminshop:atm>]);
recipes.addShapeless("adatmfrom",<adminshop:atm>,[<adminshop:shop>]);
recipes.addShaped("adautobuyer",<adminshop:buyer>,[
[<ore:sheetmetalDuraluminium>,<minecraft:ender_eye>,<ore:sheetmetalDuraluminium>],
[<immersiveengineering:conveyor>,<delivery:store_tech>,<immersiveengineering:metal_device1:6>],
[<ore:sheetmetalDuraluminium>,<ore:sheetmetalDuraluminium>,<ore:sheetmetalDuraluminium>]
]);

<ore:oreSulfur>.add(<soot:sulfur_clump>,<soot:sulfur_ore>,<thebetweenlands:items_misc:18>);



recipes.addShaped("SRPQuenchAlternative",<srparasites:itemthrow>*4,[
[null,<ore:blockRedstone>],
[<ore:blockRedstone>,<immersiveengineering:wooden_device0:4>,<ore:blockRedstone>],
[null,<ore:blockRedstone>]
]);