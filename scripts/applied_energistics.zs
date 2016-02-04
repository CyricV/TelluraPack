# //Inscriber
# //InputArray, plateA, plateB, OutputStack, TypeString //TypeStrings avaible are "Inscribe" and "Press"
# mods.appeng.Inscriber.addRecipe([<minecraft:gold_block>], <appliedenergistics2:item.ItemMultiMaterial:15>, null, <appliedenergistics2:item.ItemMultiMaterial:18> * 9, "Press");
# mods.appeng.Inscriber.addRecipe([<minecraft:iron_ingot>], <minecraft:redstone>, <minecraft:cobblestone>, <minecraft:piston>, "Inscribe");
# //OutputStack
# mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:15>);# 
# Materials
var manaPearl                   = <Botania:manaResource:1>;
var runeOfWater                 = <Botania:rune>;
var runeOfFire                  = <Botania:rune:1>;
var runeOfEarth                 = <Botania:rune:2>;
var runeOfAir                   = <Botania:rune:3>;
var energeticAlloy              = <EnderIO:itemAlloy:1>;
var enderCrystal                = <EnderIO:itemMaterial:8>;
var machineChassis              = <EnderIO:itemMachinePart>;
var fluixBlock                  = <appliedenergistics2:tile.BlockFluix>;
var quartzGlass                 = <appliedenergistics2:tile.BlockQuartzGlass>;
var chargedCertusQuartz         = <appliedenergistics2:item.ItemMultiMaterial:1>;
var fluixPearl                  = <appliedenergistics2:item.ItemMultiMaterial:9>;
var calculationPress            = <appliedenergistics2:item.ItemMultiMaterial:13>;
var engineeringPress            = <appliedenergistics2:item.ItemMultiMaterial:14>;
var logicPress                  = <appliedenergistics2:item.ItemMultiMaterial:15>;
var printedCalculationCircuit   = <appliedenergistics2:item.ItemMultiMaterial:16>;
var printedEngineeringCircuit   = <appliedenergistics2:item.ItemMultiMaterial:17>;
var printedLogicCircuit         = <appliedenergistics2:item.ItemMultiMaterial:18>;
var siliconPress                = <appliedenergistics2:item.ItemMultiMaterial:19>;
var printedSilicon              = <appliedenergistics2:item.ItemMultiMaterial:20>;
var logicProcessor              = <appliedenergistics2:item.ItemMultiMaterial:22>;
var calculationProcessor        = <appliedenergistics2:item.ItemMultiMaterial:23>;
var engineeringProcessor        = <appliedenergistics2:item.ItemMultiMaterial:24>;
var woodenGear                  = <appliedenergistics2:item.ItemMultiMaterial:40>;
var formationCore               = <appliedenergistics2:item.ItemMultiMaterial:43>;
var annihilationCore            = <appliedenergistics2:item.ItemMultiMaterial:44>;
var diamond                     = <minecraft:diamond>;
var ironIngot                   = <minecraft:iron_ingot>;
var redstone                    = <minecraft:redstone>;
var redAlloyWire                = <ProjRed|Transmission:projectred.transmission.wire>;
var voidMetalNug                = <Thaumcraft:ItemNugget:7>;
var airShard                    = <Thaumcraft:ItemShard>;
var fireShard                   = <Thaumcraft:ItemShard:1>;
var waterShard                  = <Thaumcraft:ItemShard:2>;
var earthShard                  = <Thaumcraft:ItemShard:3>;
var orderShard                  = <Thaumcraft:ItemShard:4>;
var entropyShard                = <Thaumcraft:ItemShard:5>;
var basicMachineFrame           = <ThermalExpansion:Frame>;

# Devices
var quartzGrindstone            = <appliedenergistics2:tile.BlockGrinder>;
var woodenCrank                 = <appliedenergistics2:tile.BlockCrank>;
var inscriber                   = <appliedenergistics2:tile.BlockInscriber>;
var charger                     = <appliedenergistics2:tile.BlockCharger>;
var energyAcceptor              = <appliedenergistics2:tile.BlockEnergyAcceptor>;
var vibrationChamber            = <appliedenergistics2:tile.BlockVibrationChamber>;
var energyCell                  = <appliedenergistics2:tile.BlockEnergyCell>;
var denseEnergyCell             = <appliedenergistics2:tile.BlockDenseEnergyCell>;
var crystalGrowthAccelerator    = <appliedenergistics2:tile.BlockQuartzGrowthAccelerator>;
var meChest                     = <appliedenergistics2:tile.BlockChest>;
var cellWorkbench               = <appliedenergistics2:tile.BlockCellWorkbench>;
var meStorageBus                = <appliedenergistics2:item.ItemMultiPart:220>;
var meImportBus                 = <appliedenergistics2:item.ItemMultiPart:240>;
var meExportBus                 = <appliedenergistics2:item.ItemMultiPart:260>;
var meTerminal                  = <appliedenergistics2:item.ItemMultiPart:380>;
var stickyPiston                = <minecraft:sticky_piston>;
var furnace                     = <minecraft:furnace>;
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;
var machinistsWorkbench         = <ThermalExpansion:Device>;

# Ore Dictionary Items
var allIronNug                  = <ore:nuggetIron>;
var allGoldNug                  = <ore:nuggetGold>;
var allFluixCrystal             = <ore:anyFluixCrystal>;
var allGlassPane                = <ore:paneGlass>;
var allIlluminatedPanel         = <ore:itemIlluminatedPanel>;

################################################################
### Removal ####################################################
################################################################
# Grindstone and all recipes
recipes.remove(quartzGrindstone);
recipes.remove(woodenCrank);
recipes.remove(woodenGear);
mods.appeng.Grinder.removeRecipe(<*>);

################################################################
### STONE TIER #################################################
################################################################


################################################################
### TINKER TIER ################################################
################################################################


################################################################
### ALCHEMY TIER ###############################################
################################################################
# Inscriber
recipes.remove(inscriber);
recipes.addShaped(inscriber, [
    [ironIngot, stickyPiston,   ironIngot],
    [null,      null,           machineChassis],
    [ironIngot, stickyPiston,   ironIngot]
]);

# Charger
recipes.remove(charger);
recipes.addShaped(charger, [
    [ironIngot, allFluixCrystal,    ironIngot],
    [null,      null,               machineChassis],
    [ironIngot, allFluixCrystal,    ironIngot]
]);

# Vibration Chamber
recipes.remove(vibrationChamber);
recipes.addShaped(vibrationChamber, [
    [ironIngot, ironIngot,      ironIngot],
    [ironIngot, furnace,        ironIngot],
    [ironIngot, machineChassis, ironIngot]
]);

# Energy Acceptor
recipes.remove(energyAcceptor);
recipes.addShaped(energyAcceptor, [
    [ironIngot,     machineChassis,     ironIngot],
    [quartzGlass,   quartzGlass,        quartzGlass],
    [ironIngot,     basicMachineFrame,  ironIngot]
]);

# Crystal Growth Accellerator
recipes.remove(crystalGrowthAccelerator);
recipes.addShaped(crystalGrowthAccelerator, [
    [quartzGlass,   quartzGlass,    quartzGlass],
    [quartzGlass,   fluixBlock,     quartzGlass],
    [ironIngot,     machineChassis, ironIngot]
]);

# ME Chest
recipes.remove(meChest);
recipes.addShaped(meChest, [
    [allGlassPane,  allGlassPane,   allGlassPane],
    [ironIngot,     meTerminal,     ironIngot],
    [ironIngot,     machineChassis, ironIngot]
]);

# ME Terminal
recipes.remove(meTerminal);
recipes.addShapeless(meTerminal, [allIlluminatedPanel, formationCore, annihilationCore, calculationProcessor]);

# Cell Workbench
recipes.remove(cellWorkbench);
recipes.addShapeless(cellWorkbench, [machinistsWorkbench, calculationProcessor]);

# ME Storage Bus
recipes.remove(meStorageBus);
recipes.addShapeless(meStorageBus, [meImportBus, meExportBus, calculationProcessor]);

# 1K ME Storage Component
recipes.remove(1kStorageComponent);
recipes.addShaped(1kStorageComponent, [
    [redstone,          pureCertusQuartz,       redstone],
    [pureCertusQuartz,  calculationProcessor,   pureCertusQuartz],
    [redstone,          pureCertusQuartz,       redstone]
]);

# Formation Core
recipes.remove(formationCore);
recipes.addShaped(formationCore * 2, [
    [null,              orderShard,             null],
    [allFluixCrystal,   calculationProcessor,   allFluixCrystal],
    [null,              runeOfWater,            null]
]);

# Annihilation Core
recipes.remove(annihilationCore);
recipes.addShaped(annihilationCore * 2, [
    [null,              entropyShard,           null],
    [allFluixCrystal,   calculationProcessor,   allFluixCrystal],
    [null,              runeOfFire,             null]
]);

# Calculation Processor
mods.appeng.Inscriber.removeRecipe(calculationProcessor);
mods.appeng.Inscriber.addRecipe([redAlloyWire], printedCalculationCircuit, printedSilicon, calculationProcessor, "Press");

################################################################
### INFUSTION TIER #############################################
################################################################
# ME Conversion Monitor

# ME Security Terminal

# Drive

# 4K ME Storage Component

# 4K ME Storage Cell

# 16K ME Storage Component

# 16K ME Storage Cell

# Printed Logic Circuit
mods.appeng.Inscriber.removeRecipe(printedLogicCircuit);
mods.appeng.Inscriber.addRecipe([energeticAlloy], logicPress, null, printedLogicCircuit, "Inscribe");

# Logic Processor
mods.appeng.Inscriber.removeRecipe(logicProcessor);
mods.appeng.Inscriber.addRecipe([redAlloyWire], printedLogicCircuit, printedSilicon, logicProcessor, "Press");

################################################################
### VOID TIER ##################################################
################################################################
# Fluix Pearl
recipes.remove(fluixPearl);
recipes.addShaped(fluixPearl, [
    [voidMetalNug,      allFluixCrystal,    voidMetalNug],
    [allFluixCrystal,   manaPearl,          allFluixCrystal],
    [voidMetalNug,      allFluixCrystal,    voidMetalNug]
]);

# ME Pattern Terminal

# ME Interface Terminal

# ME Interface

# ME Wireless Access Point

# Wireless Terminal

# ME Controller

# ME IO Port

# ME Quantum Ring

# ME Quantum Link Chamber

# Molecular Assembler

# Crafting Unit
recipes.remove(energyAcceptor);
recipes.addShaped(energyAcceptor, [
    [ironIngot,     machineChassis,     ironIngot],
    [quartzGlass,   quartzGlass,        quartzGlass],
    [ironIngot,     basicMachineFrame,  ironIngot]
]);

# Crafting Co-Processor

# 1k Crafting Storage

# 4k Crafting Storage

# 16k Crafting Storage

# 64k Crafting Storage

# Crafting Monitor

# 64K ME Storage Component

# 64K ME Storage Cell

# Spacial Pylon

# Spacial IO

# Printed Engineering Circuit
mods.appeng.Inscriber.removeRecipe(printedEngineeringCircuit);
mods.appeng.Inscriber.addRecipe([enderCrystal], engineeringPress, null, printedEngineeringCircuit, "Inscribe");

# Engineering Processor
mods.appeng.Inscriber.removeRecipe(engineeringProcessor);
mods.appeng.Inscriber.addRecipe([redAlloyWire], printedEngineeringCircuit, printedSilicon, engineeringProcessor, "Press");