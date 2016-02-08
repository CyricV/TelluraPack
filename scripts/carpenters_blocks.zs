# Materials
var darkSteelIngot              = <EnderIO:itemAlloy:6>;
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
var carpentersBlock             = <CarpentersBlocks:blockCarpentersBlock>;


# Devices
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;
var stonePressurePlate          = <minecraft:stone_pressure_plate>;
var woodenPressurePlate         = <minecraft:wooden_pressure_plate>;
var goldenPressurePlate         = <minecraft:light_weighted_pressure_plate>;
var ironPressurePlate           = <minecraft:heavy_weighted_pressure_plate>;
var carpentersPressurePlate     = <CarpentersBlocks:blockCarpentersPressurePlate>;

# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;
var redstoneDust                = <ore:dustRedstone>;

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################


################################################################
### TINKER TIER ################################################
################################################################
# Carpenter's Pressure Plate
recipes.remove(carpentersPressurePlate);
recipes.addShapeless(carpentersPressurePlate, [woodenPressurePlate, carpentersBlock]);

################################################################
### ALCHEMY TIER ###############################################
################################################################


################################################################
### INFUSTION TIER #############################################
################################################################


################################################################
### VOID TIER ##################################################
################################################################