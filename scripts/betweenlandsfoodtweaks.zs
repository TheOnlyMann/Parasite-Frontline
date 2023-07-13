import crafttweaker.item.IItemStack;
import foodtweaker.FoodInfo;
import mods.foodtweaker.Tweaker;
/*
<thebetweenlands:sap_ball>.maxStackSize=64;

var sludgaballinfo = FoodInfo(<thebetweenlands:sap_ball>);
Tweaker.changeFoodStats(<thebetweenlands:sludge_ball:0>,sludgaballinfo);
*/

for item in loadedMods["thebetweenlands"].items {
  if item.isFood{
	var food = FoodInfo(item);
	food.setHeal(item.healAmount * 1);
	food.setSaturation(item.saturation * 0.5);
	Tweaker.changeFoodStats(item,food);
    // do stuff with `stack.saturation` and `stack.healAmount`
  }
}