import mods.nei.NEI;
# Materials
var manaGlass                   = <Botania:manaGlass>;
var manaSteel                   = <Botania:manaResource>;
var electricalSteel             = <EnderIO:itemAlloy>;
var fusedQuartz                 = <EnderIO:blockFusedQuartz>;
var fluidTank                   = <EnderIO:blockTank>;
var pressurizedFluidTank        = <EnderIO:blockTank:1>;
var vibrantAlloy                = <EnderIO:itemAlloy:2>;
var conductiveIron              = <EnderIO:itemAlloy:4>;
var basicCapacitor              = <EnderIO:itemBasicCapacitor>;
var doubleLayerCapacitor        = <EnderIO:itemBasicCapacitor:1>;
var octadicCapacitor            = <EnderIO:itemBasicCapacitor:2>;
var itemConduit                 = <EnderIO:itemItemConduit>;
var fluidConduit                = <EnderIO:itemLiquidConduit>;
var pressurizedFluidConduit     = <EnderIO:itemLiquidConduit:1>;
var enderFluidConduit           = <EnderIO:itemLiquidConduit:2>;
var machineChassis              = <EnderIO:itemMachinePart>;
var conduitBinder               = <EnderIO:itemMaterial:1>;
var binderComposite             = <EnderIO:itemMaterial:2>;
var pulsatingIronNug            = <EnderIO:itemMaterial:3>;
var energyConduit               = <EnderIO:itemPowerConduit>;
var enhancedEnergyConduit       = <EnderIO:itemPowerConduit:1>;
var enderEnergyConduit          = <EnderIO:itemPowerConduit:2>;
var enderPearlShard             = <GrimoireOfGaia:item.GrimoireOfGaia.Shard:5>;
var ironIngot                   = <minecraft:iron_ingot>;
var gravel                      = <minecraft:gravel>;
var redstone                    = <minecraft:redstone>;
var clayBall                    = <minecraft:clay_ball>;
var searedBrick                 = <TConstruct:materials:2>;
var searedBrick2                = <TConstruct:materials:37>;
var steelIngot                  = <TConstruct:materials:16>;
var voidMetalIngot              = <Thaumcraft:ItemResource:16>;
var basicMachineFrame           = <ThermalExpansion:Frame>;
var hardenedMachineFrame        = <ThermalExpansion:Frame:1>;
var reinforcedMachineFrame      = <ThermalExpansion:Frame:2>;
var resonantMachineFrame        = <ThermalExpansion:Frame:3>;
var invarGear                   = <ThermalFoundation:material:136>;

# Devices
var sagMill                     = <EnderIO:blockSagMill>;
var alloySmelter                = <EnderIO:blockAlloySmelter>;
var redstoneFurnace             = <ThermalExpansion:Machine>;
var redstoneFurnace0            = redstoneFurnace.withTag({Level: 0 as byte});

# Ore Dictionary Items
var allSand                     = <ore:sand>;
var allGlassBlocks              = <ore:blockGlass>;
var allCopperIngots             = <ore:ingotCopper>;
var allGoldNugs                 = <ore:nuggetGold>;

################################################################
### Removal ####################################################
################################################################
# Machine Chasis (Replaced by Machine Frames)
recipes.remove(machineChassis);

# Tanks
recipes.remove(fluidTank);
NEI.hide(<EnderIO:blockTank:0>);
recipes.remove(pressurizedFluidTank);
NEI.hide(<EnderIO:blockTank:1>);

################################################################
### STONE TIER #################################################
################################################################
# Binder Composite
recipes.remove(binderComposite);
recipes.addShaped(binderComposite * 16, [
    [gravel,    gravel,     gravel],
    [allSand,   clayBall,   allSand],
    [gravel,    gravel,     gravel]
]);

# Conduit Binder
furnace.remove(conduitBinder);
furnace.addRecipe(conduitBinder * 8, binderComposite);

################################################################
### TINKER TIER ################################################
################################################################
# Fluid Conduit
recipes.remove(fluidConduit);
recipes.addShaped(fluidConduit * 16, [
    [conduitBinder,     conduitBinder,  conduitBinder],
    [allGlassBlocks,    allGlassBlocks, allGlassBlocks],
    [conduitBinder,     conduitBinder,  conduitBinder]
]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Tier Implies:
#   Energy Conduit

# Basic Capacitor
recipes.addShaped(basicCapacitor, [
    [null,          allGoldNugs,    redstone],
    [allGoldNugs,   conductiveIron, allGoldNugs],
    [redstone,      allGoldNugs,    null]
]);
recipes.addShaped(basicCapacitor, [
    [redstone,      allGoldNugs,    null],
    [allGoldNugs,   conductiveIron, allGoldNugs],
    [null,          allGoldNugs,    redstone]
]);

# Double Layer Capacitor

# SAG Mill
recipes.remove(sagMill);
recipes.addShaped(sagMill, [
    [ironIngot,    invarGear,          ironIngot],
    [invarGear,    null,               invarGear],
    [ironIngot,    basicMachineFrame,  ironIngot]
]);

# Pressurized Fluid Conduit
recipes.remove(pressurizedFluidConduit);
recipes.addShaped(pressurizedFluidConduit * 16, [
    [conduitBinder, conduitBinder,  conduitBinder],
    [manaGlass,     manaGlass,      manaGlass],
    [conduitBinder, conduitBinder,  conduitBinder]
]);

# Conductive Iron
mods.thaumcraft.Crucible.addRecipe(
    "CRUCIBLE",
    conductiveIron,
    ironIngot,
    "potentia 2, machina 1"
);

# Item Conduit (Reduced Count)
recipes.remove(itemConduit);
recipes.addShaped(itemConduit * 4, [
    [conduitBinder,     conduitBinder,      conduitBinder],
    [enderPearlShard,   enderPearlShard,    enderPearlShard],
    [conduitBinder,     conduitBinder,      conduitBinder]
]);

################################################################
### INFUSTION TIER #############################################
################################################################
# Tier Implies:
#   Enhanced Energy Conduit

# Alloy Smelter
recipes.remove(alloySmelter);
recipes.addShaped(alloySmelter, [
    [steelIngot,    searedBrick2,           steelIngot],
    [searedBrick2,  redstoneFurnace0,       searedBrick2],
    [steelIngot,    reinforcedMachineFrame, steelIngot]
]);

# Travel Anchor

# Ender Fluid Conduit
recipes.remove(enderFluidConduit);
recipes.addShaped(enderFluidConduit * 16, [
    [conduitBinder, conduitBinder,  conduitBinder],
    [fusedQuartz,   vibrantAlloy,   fusedQuartz],
    [conduitBinder, conduitBinder,  conduitBinder]
]);

# Item Conduit (High Count)
recipes.remove(itemConduit);
recipes.addShaped(itemConduit * 16, [
    [conduitBinder,     conduitBinder,      conduitBinder],
    [pulsatingIronNug,  pulsatingIronNug,   pulsatingIronNug],
    [conduitBinder,     conduitBinder,      conduitBinder]
]);

################################################################
### VOID TIER ##################################################
################################################################
# Telepad Block

# Dimentional Transeiver

# Ender Energy Conduit
recipes.remove(enderEnergyConduit);
recipes.addShaped(enderEnergyConduit * 16, [
    [conduitBinder, conduitBinder,  conduitBinder],
    [vibrantAlloy,  voidMetalIngot, vibrantAlloy],
    [conduitBinder, conduitBinder,  conduitBinder]
]);
