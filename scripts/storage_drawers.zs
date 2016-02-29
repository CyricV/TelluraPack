# Materials
var logicProcessor              = <appliedenergistics2:item.ItemMultiMaterial:22>;
var calculationProcessor        = <appliedenergistics2:item.ItemMultiMaterial:23>;
var conduitBinder               = <EnderIO:itemMaterial:1>;
var obsidian                    = <minecraft:obsidian>;
var stick                       = <minecraft:stick>;
var ironIngot                   = <minecraft:iron_ingot>;
var redstoneDust                = <minecraft:redstone>;
var tinGear                     = <ThermalFoundation:material:129>;
var upgradeTemplate             = <StorageDrawers:upgradeTemplate>;
var upgradeStatus               = <StorageDrawers:upgradeStatus:1>;
var upgradeStatus2              = <StorageDrawers:upgradeStatus:2>;

# Devices
var piston                      = <minecraft:piston>;
var drawerController            = <StorageDrawers:controller>;
var drawerSlave                 = <StorageDrawers:controllerSlave>;
var drawerCompacting            = <StorageDrawers:compDrawers>;

# Equipment

# Ore Dictionary Items
var allGlassBlocks              = <ore:blockGlass>;
var allStickyStuff              = <ore:allStickyStuff>;
var oreDrawers                  = <ore:drawerBasic>;

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################
# Status Upgrade 1
recipes.remove(upgradeStatus);
recipes.addShapeless(upgradeStatus, [upgradeTemplate, redstoneDust]);

# Status Upgrade 2
recipes.remove(upgradeStatus2);
recipes.addShapeless(upgradeStatus2, [upgradeStatus, redstoneDust]);

################################################################
### TINKER TIER ################################################
################################################################
# Compacting Drawer
recipes.remove(drawerCompacting);
recipes.addShaped(drawerCompacting * 2, [
    [ironIngot, ironIngot,  ironIngot],
    [piston,    oreDrawers, piston],
    [ironIngot, tinGear,    ironIngot]
]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Drawer Controller
recipes.remove(drawerController);
recipes.addShaped(drawerController, [
    [ironIngot, ironIngot,              ironIngot],
    [tinGear,   oreDrawers,             tinGear],
    [ironIngot, calculationProcessor,   ironIngot]
]);

# Drawer Slave
recipes.remove(drawerSlave);
recipes.addShapeless(drawerSlave * 4, [drawerController]);

################################################################
### INFUSTION TIER #############################################
################################################################

################################################################
### VOID TIER ##################################################
################################################################
