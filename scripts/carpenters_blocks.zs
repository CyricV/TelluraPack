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
var carpentersPressurePlate     = <CarpentersBlocks:blockCarpentersPressurePlate>;
var buttonCarpenter             = <CarpentersBlocks:blockCarpentersButton>;
var leverCarpenter              = <CarpentersBlocks:blockCarpentersLever>;
var doorCarpenter               = <CarpentersBlocks:itemCarpentersDoor>;
var doorCarpenterGarage         = <CarpentersBlocks:blockCarpentersGarageDoor>;
var woodenPressurePlate         = <minecraft:wooden_pressure_plate>;
var lever                       = <minecraft:lever>;
var buttonWood                  = <minecraft:wooden_button>;
var doorTrap                    = <minecraft:trapdoor>;
var doorWood                    = <minecraft:wooden_door>;

# Ore Dictionary Items
var oreIronNug                  = <ore:nuggetIron>;
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
# Carpenter's Button
recipes.remove(buttonCarpenter);
recipes.addShapeless(buttonCarpenter, [buttonWood, carpentersBlock]);
# Carpenter's Lever
recipes.remove(leverCarpenter);
recipes.addShapeless(leverCarpenter, [lever, carpentersBlock]);
# Carpenter's Door
recipes.remove(doorCarpenter);
recipes.addShaped(doorCarpenter, [
    [carpentersBlock,   carpentersBlock,    oreIronNug],
    [carpentersBlock,   carpentersBlock,    redstoneDust],
    [carpentersBlock,   carpentersBlock,    oreIronNug]
]);
# Carpenter's Garage Door
recipes.remove(doorCarpenterGarage);
recipes.addShaped(doorCarpenterGarage * 12, [
    [oreIronNug,    doorCarpenter,  oreIronNug],
    [oreIronNug,    doorCarpenter,  oreIronNug],
    [oreIronNug,    doorCarpenter,  oreIronNug]
]);

################################################################
### ALCHEMY TIER ###############################################
################################################################


################################################################
### INFUSTION TIER #############################################
################################################################


################################################################
### VOID TIER ##################################################
################################################################