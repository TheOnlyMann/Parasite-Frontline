import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;


val recipeItems = [
	<opencomputers:material:4>,
	<opencomputers:material:6>,
	<opencomputers:material:7>,
	<opencomputers:material:8>,
	<opencomputers:material:9>,
	<opencomputers:material:2>,
	<opencomputers:material:0>,
	<opencomputers:material:29>
] as IIngredient[];
for iName in recipeItems {
	recipes.remove(iName);
}
recipes.addShaped("diamondblowup",<opencomputers:material:29> * 6,[
[null,<ore:gunpowder>,null],
[<ore:gunpowder>,<ore:gemDiamond>,<ore:gunpowder>],
[null,<ore:gunpowder>,null]
]);
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotSteel>, <*>.only(function(item) {
    return !isNull(item) & "opencomputers".matches(item.definition.owner);
}));
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:ingotElectrum>, <*>.only(function(item) {
    return !isNull(item) & "opencomputers".matches(item.definition.owner);
}));
recipes.replaceAllOccurences(<minecraft:iron_nugget>, <minecraft:iron_ingot>, <*>.only(function(item) {
    return !isNull(item) & "opencomputers".matches(item.definition.owner);
}));