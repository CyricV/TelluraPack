# Materials
var fireEssence                 = <magicalcrops:magicalcrops_FireEssence>;
var waterEssence                = <magicalcrops:magicalcrops_WaterEssence>;
var airEssence                  = <magicalcrops:magicalcrops_AirEssence>;
var earthEssence                = <magicalcrops:magicalcrops_EarthEssence>;
var bedrock                     = <minecraft:bedrock>;
var blazePowder                 = <minecraft:blaze_powder>;
var book                        = <minecraft:book>;
var bucket                      = <minecraft:bucket>;
var glowstoneDust               = <minecraft:glowstone_dust>;
var paper                       = <minecraft:paper>;
var sugarCane                   = <minecraft:reeds>;
var waterBucket                 = <minecraft:water_bucket>;
var sawdust                     = <ThermalExpansion:material:512>;
var netherrack                  = <minecraft:netherrack>;
var netherBrickBlock            = <minecraft:nether_brick>;
var netherBrickStairs           = <minecraft:nether_brick_stairs>;
var netherBrickFence            = <minecraft:nether_brick_fence>;
var netherBrickSlab             = <minecraft:stone_slab:6>;
var netherBrick                 = <minecraft:netherbrick>;
var stonePlate                  = <TConstruct:heavyPlate:1>;
var woodenPlate                 = <TConstruct:heavyPlate>;
var electrumPlate               = <TConstruct:heavyPlate:1025>;
var ironPlate                   = <TConstruct:heavyPlate:2>;


# Devices
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;
var stonePressurePlate          = <minecraft:stone_pressure_plate>;
var woodenPressurePlate         = <minecraft:wooden_pressure_plate>;
var goldenPressurePlate         = <minecraft:light_weighted_pressure_plate>;
var ironPressurePlate           = <minecraft:heavy_weighted_pressure_plate>;

# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;
var redstoneDust                = <ore:dustRedstone>;
# Power Recipe Fluid Transposer Fix
#var accioMaterial               = <ore:accioMaterial>;
#accioMaterial.remove(fireEssence);
#accioMaterial.remove(waterEssence);
#accioMaterial.remove(airEssence);
#accioMaterial.remove(earthEssence);

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################
# Bedrock
bedrock.displayName = "\u00A70\u00A7kAmalgam";

# Paper
recipes.remove(paper);
recipes.addShapeless(paper * 3, [sugarCane, sugarCane, sugarCane]);
recipes.addShapeless(paper * 2, [book]);
recipes.addShaped(paper * 32, [
    [sawdust,   sawdust,                                sawdust],
    [sawdust,   waterBucket.transformReplace(bucket),   sawdust],
    [sawdust,   sawdust,                                sawdust]
]);

# Bucket
recipes.remove(bucket);
recipes.addShaped(bucket, [
    [allIronNugs,   null,           allIronNugs],
    [allIronNugs,   allIronNugs,    allIronNugs],
    [null,          null,           null]
]);

# Hopper
recipes.remove(hopper);
recipes.addShaped(hopper, [
    [allIronNugs,   null,           allIronNugs],
    [allIronNugs,   chest,          allIronNugs],
    [null,          allIronNugs,    null]
]);


################################################################
### TINKER TIER ################################################
################################################################
# Stone Pressure Plate
recipes.remove(stonePressurePlate);
recipes.addShapeless(stonePressurePlate, [stonePlate, redstoneDust]);
# Wooden Pressure Plate
recipes.remove(woodenPressurePlate);
recipes.addShapeless(woodenPressurePlate, [woodenPlate, redstoneDust]);
# Gold Pressure Plate
recipes.remove(goldenPressurePlate);
recipes.addShapeless(goldenPressurePlate, [electrumPlate, redstoneDust]);
mods.tconstruct.Smeltery.removeMelting(goldenPressurePlate);
mods.tconstruct.Smeltery.addMelting(goldenPressurePlate, <liquid:electrum.molten> * 1152, 400, goldenPressurePlate);
# Iron Pressure Plate
recipes.remove(ironPressurePlate);
recipes.addShapeless(ironPressurePlate, [ironPlate, redstoneDust]);
mods.tconstruct.Smeltery.removeMelting(ironPressurePlate);
mods.tconstruct.Smeltery.addMelting(ironPressurePlate, <liquid:iron.molten> * 1152, 600, ironPressurePlate);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Blaze Powder
#recipes.remove(blazePowder);
#mods.thermalexpansion.Transposer.removeFillRecipe(glowstoneDust, <liquid:redstone>);
#mods.thermalexpansion.Transposer.addFillRecipe(2000, fireEssence, blazePowder * 2, <liquid:redstone> * 100);


################################################################
### INFUSTION TIER #############################################
################################################################
# Nether Materials Modification
netherrack.displayName = "Nether Scrap";
mods.thermalexpansion.Crucible.addRecipe(1000, netherrack, <liquid:iron.molten> * 16);
netherBrickBlock.displayName = "Nether Plate Block";
netherBrickStairs.displayName = "Nether Plate Stairs";
netherBrickFence.displayName = "Nether Plate Fence";
netherBrickSlab.displayName = "Nether Plate Slab";
netherBrick.displayName = "Nether Plate";

################################################################
### VOID TIER ##################################################
################################################################