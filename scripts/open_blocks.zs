# Materials
var conduitBinder               = <EnderIO:itemMaterial:1>;
var obsidian                    = <minecraft:obsidian>;
var stick                       = <minecraft:stick>;
var searedBrick                 = <TConstruct:materials:2>;
var alumiteRod                  = <TConstruct:toolRod:15>;
var tinGear                     = <ThermalFoundation:material:129>;
var heavyPlateStone             = <TConstruct:heavyPlate:1>;

# Devices
var vacuumChest                 = <EnderIO:blockVacuumChest>;
var tank                        = <OpenBlocks:tank>;
var vacuumHopper                = <OpenBlocks:vacuumhopper>;
var drain                       = <OpenBlocks:xpdrain>;
var brainInAJar                 = <Thaumcraft:blockJar:1>;
var buttonBig                   = <OpenBlocks:bigbutton>;
var buttonStone                 = <minecraft:stone_button>;

# Equipment
var gliderWing                  = <EnderIO:itemGliderWing>;
var gliderWingOB                = <OpenBlocks:generic>;
var gliderWings                 = <EnderIO:itemGliderWing:1>;
var hangGlider                  = <OpenBlocks:hangglider>;

# Ore Dictionary Items
var allGlassBlocks              = <ore:blockGlass>;
var allStickyStuff              = <ore:allStickyStuff>;

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################
recipes.remove(tank);
recipes.addShaped(tank * 2, [
    [searedBrick,       conduitBinder,  searedBrick],
    [allGlassBlocks,    null,           allGlassBlocks],
    [searedBrick,       conduitBinder,  searedBrick]
]);

################################################################
### TINKER TIER ################################################
################################################################
# Big Button
recipes.remove(buttonBig);
recipes.addShapeless(buttonBig, [buttonStone, heavyPlateStone]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Hang Glider
recipes.remove(gliderWingOB);
recipes.remove(hangGlider);
mods.thaumcraft.Arcane.addShaped(
    "ASPECTS",
    hangGlider,
    "aer 30", [
    [gliderWing,    alumiteRod, gliderWing],
    [stick,         stick,      stick],
    [null,          null,       null]
]);
mods.thaumcraft.Arcane.addShaped(
    "ASPECTS",
    hangGlider,
    "aer 30", [
    [null,          null,       null],
    [gliderWing,    alumiteRod, gliderWing],
    [stick,         stick,      stick]
]);
recipes.addShaped(hangGlider, [
    [null,  null,           null],
    [null,  gliderWings,    null],
    [stick, stick,          stick]
]);
recipes.addShaped(hangGlider, [
    [null,  gliderWings,    null],
    [stick, stick,          stick],
    [null,  null,           null]
]);

################################################################
### INFUSTION TIER #############################################
################################################################
# Vacuume Hopper
recipes.remove(vacuumHopper);
recipes.addShaped(vacuumHopper, [
    [obsidian,  brainInAJar,    obsidian],
    [obsidian,  vacuumChest,    obsidian],
    [obsidian,  tinGear,        obsidian]
]);


################################################################
### VOID TIER ##################################################
################################################################
