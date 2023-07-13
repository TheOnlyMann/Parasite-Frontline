import crafttweaker.item.IItemTransformer;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    val bucketItems = [
        <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}),
        <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}),
        <forge:bucketfilled>.withTag({FluidName: "purifiedwater", Amount: 1000}),
        <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
        <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),
        <minecraft:water_bucket>
    ] as IItemStack[];

    if event.dimension == 20 {
        for item in bucketItems {
            if item.matches(event.item) {
                event.cancel();
                return;
            }

        }
    }
});