import crafttweaker.item.IItemStack;
import foodtweaker.FoodInfo;
import mods.foodtweaker.Tweaker;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;


val tooltipMap = {
  <thebetweenlands:rope_item> : ["Place on a block to dangle a rope underneath."],
  <thebetweenlands:volarkite> : ["R-Click while holding to deploy.", "Glide long lengths while deployed."],
  <thebetweenlands:empty_amate_map> : ["While normal maps work in betweenlands,", "Amate Maps display the structures and biomes in a convenient way."],
  <thebetweenlands:manual_hl> : ["Your guide on brewing booze in the betweenlands."],
  <thebetweenlands:wisp> : ["Only approachable during the Aurora."],
  <thebetweenlands:rubber_boots> : ["Allows the user to not sink in mud, making traversing on foot much easier."],
  <thebetweenlands:marsh_runner_boots> : ["Similar to rubber boots, it allows the user to run on water for a short while."],
  <thebetweenlands:chiromaw_barb> : ["Locks enemy up in the place."],
  <thebetweenlands:shock_arrow> : ["Chain lightning!"],
  <thebetweenlands:skull_mask> : ["While worn, prevents wights from pocessing you."],
  <thebetweenlands:predator_bow> : ["When fully charged, the arrow can re-assigned to enemies near it."],
  <thebetweenlands:voodoo_doll> : ["Damages entities around you."],
  <thebetweenlands:middle_fruit_bush_seeds> : ["Can be grown in compost-filled holes."],
  <thebetweenlands:spores> : ["Can be grown in compost-filled holes."],
  <thebetweenlands:bulb_capped_mushroom_item> : ["Can be spread in compost-filled holes."],
  <thebetweenlands:flat_head_mushroom_item> : ["Can be spread in compost-filled holes."],
  <thebetweenlands:black_hat_mushroom_item> : ["Can be spread in compost-filled holes."],
  <thebetweenlands:purified_swamp_dirt> : ["Allows seeds planted to not decay."],
  <thebetweenlands:bl_bucket_plant_tonic:*> : ["Cures decayed farmland."],
  <thebetweenlands:gecko_cage> : ["Allows you to test herblore on Geckos."],
  <thebetweenlands:sickle> : ["Used to gather up local flora for Farming/Herblore usage."],
  <thebetweenlands:drinkable_brew:*> : ["Made in a steeping pot, served in bowls."],
  <thebetweenlands:mortar> : ["Insert Pestle and ingredient, then L-Click to craft.","Can have life crystal in it to be automated."],
  <thebetweenlands:alembic> : ["Used to separate out individual Aspect from a crude infusion.","Or, used to brew the full infusion to an elixir.","Pull out using Vials."],
  <thebetweenlands:aspect_vial:*> : ["Place down to gather up certain Aspect into 1 Vial."],
  <thebetweenlands:elixir:*> : ["R-Click to drink. Shift+R-Click to throw."],
  <thebetweenlands:items_crushed:17> : ["Used similarly as bonemeal."],
  <thebetweenlands:repeller> : ["Insert shimmerstone to activate. Consumes Byariis as fuel. R-Click to adjust range."],
  <thebetweenlands:censer> : ["Burns certain stuff with sulfur to apply effect in an area."],
  <thebetweenlands:aspectrus_seeds> : ["Needs Rubber Plank Fences on top (up to 3) to grow on it."],
  <thebetweenlands:fish_bait> : ["Can be used with slingshot."],
  <thebetweenlands:barnacle_1_2> : ["underwater-growable meat, I guess."],
  <thebetweenlands:bone_wayfinder> : ["After connecting, Hold R-Click to use.", "Can be placed on Offering Table to be used while deployed.", "Press Shift while near deployed wayfinder to use it."],
  <thebetweenlands:items_misc:2> : ["Fill in dug up holes with this to produce crop.","Allows you to spread betweenlands plant when planted on top."]
} as string[][IItemStack];

for item, data in tooltipMap {
  for ttip in data{
    item.addTooltip(ttip);
  }
}
val shiftTooltipMap = {
  <thebetweenlands:net> : ["Can catch: Firefly, Dragonfly, Gecko, Tiny Sludge Worm and other small creatures.","Can catch small insects n stuff. Might need to sneak up, though."],
  <thebetweenlands:wood_chip_path> : ["Speed 2 while on the path","Looks nice to walk on."],
  <thebetweenlands:walkway> : ["Speed 2 while on the path","Looks nice to walk on."],
  <thebetweenlands:lurker_skin_helmet> : ["Full set: Grant Water Breathing","Gives speed boost underwater."],
  <thebetweenlands:lurker_skin_chestplate> : ["Full set: Grant Water Breathing","Gives speed boost underwater."],
  <thebetweenlands:lurker_skin_leggings> : ["Full set: Grant Water Breathing","Gives speed boost underwater."],
  <thebetweenlands:lurker_skin_boots> : ["Full set: Grant Water Breathing","Gives speed boost underwater."],
  <thebetweenlands:weedwood_rowboat> : ["A/D to row left/right respectively.","Quite unorthodox.."],
  <thebetweenlands:draeton> : ["Shift Right Click on the boat's middle part to access it's upgrades- Likewise on the burner above to access the fuel.","Looks like it doesn't work on its own.."],
  <thebetweenlands:compost_bin> : ["R-Click to interact. Happy farming!","L-Click to open."],
  <thebetweenlands:weedwood_rowboat> : ["A/D to row left/right respectively.","Quite unorthodox.."]
} as string[][IItemStack];

for item, data in shiftTooltipMap {
  item.addShiftTooltip(data[0],data[1]);
}


val filterData = [["Stagnant Water -> Swamp Water","Allows you to pass liquid down to a container."],["Swamp Water -> Clean Water","Put Mesh strainer in to filter certain liquids into others."]] as string[][];
for ttip2 in filterData{
  <thebetweenlands:items_misc:2>.addShiftTooltip(ttip2[0],ttip2[1]);
}
val infuserData = [
  ["Ingredients can be added 6 times.",														"Place on top of a roaring fire to use."],
  ["Herblore are used to brew out the aspects from natural ingredients.",					"Pour in some buckets of swamp water,"],
  ["Aspect Vial are used to brew aspects together into a elixir.",							"Ingredients[SHIFT to know more], then R-Click to stir."],
  ["Infusing is a careful process and needs to be extracted quickly after it's infused.",	"Don't let the brew scald! Stir frequently. If it's been finished, you can extract the infusion with buckets."],
  ["If it burns, a Shallowbreath can spawn.",												"Can have life crystal in it to be automated."]
] as string[][];
for ttip3 in infuserData{
  <thebetweenlands:items_misc:2>.addShiftTooltip(ttip3[0],ttip3[1]);
}