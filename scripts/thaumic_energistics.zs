# Materials
var pureCertusQuartz            = <appliedenergistics2:item.ItemMultiMaterial:10>;
var logicProcessor              = <appliedenergistics2:item.ItemMultiMaterial:22>;
var calculationProcessor        = <appliedenergistics2:item.ItemMultiMaterial:23>;
var engineeringProcessor        = <appliedenergistics2:item.ItemMultiMaterial:24>;
var redAlloyWire                = <ProjRed|Transmission:projectred.transmission.wire>;
var wardedGlass                 = <Thaumcraft:blockCosmeticOpaque:2>;
var thaumiumIngot               = <Thaumcraft:ItemResource:2>;
var salisMundus                 = <Thaumcraft:ItemResource:14>;
var thaumiumNug                 = <Thaumcraft:ItemNugget:6>;
var meEssentiaHousing           = <thaumicenergistics:storage.casing>;
var oneKEssentiaComponent       = <thaumicenergistics:storage.component>;
var fourKEssentiaComponent      = <thaumicenergistics:storage.component:1>;
var sixteenKEssentiaComponent   = <thaumicenergistics:storage.component:2>;
var sixtyFourKEssentiaComponent = <thaumicenergistics:storage.component:3>;
var oneKEssentiaCell            = <thaumicenergistics:storage.essentia>;
var fourKEssentiaCell           = <thaumicenergistics:storage.essentia:1>;
var sixteenKEssentiaCell        = <thaumicenergistics:storage.essentia:2>;
var sixtyFourKEssentiaCell      = <thaumicenergistics:storage.essentia:3>;
var ironGearTE                  = <thaumicenergistics:material:2>;

# Devices
var ironGearBox                 = <thaumicenergistics:thaumicenergistics.block.gear.box>;
var thaumiumGearBox             = <thaumicenergistics:thaumicenergistics.block.golem.gear.box>;

# Ore Dictionary Items
var ironNug                     = <ore:nuggetIron>;
var copperNug                   = <ore:nuggetCopper>;
var goldNug                     = <ore:nuggetGold>;
var silverNug                   = <ore:nuggetSilver>;


################################################################
### Removal ####################################################
################################################################
# Iron Gear Box
mods.thaumcraft.Research.clearPrereqs("thaumicenergistics.TEIRONGEARBOX");
mods.thaumcraft.Research.removeResearch("thaumicenergistics.TEIRONGEARBOX");
mods.thaumcraft.Arcane.removeRecipe(ironGearTE);
mods.thaumcraft.Arcane.removeRecipe(ironGearBox);

# Thaumium Gear Box
mods.thaumcraft.Research.clearPrereqs("thaumicenergistics.Pseudo.COREUSE");
mods.thaumcraft.Research.removeResearch("thaumicenergistics.Pseudo.COREUSE");
mods.thaumcraft.Research.clearPrereqs("thaumicenergistics.TETHAUMGBOX");
mods.thaumcraft.Research.removeResearch("thaumicenergistics.TETHAUMGBOX");
mods.thaumcraft.Crucible.removeRecipe(thaumiumGearBox);

################################################################
### TINKER TIER ################################################
################################################################


################################################################
### ALCHEMY TIER ###############################################
################################################################
# ME Essentia Storage Housing
recipes.remove(meEssentiaHousing);
recipes.addShaped(meEssentiaHousing, [
    [thaumiumNug,   wardedGlass,    thaumiumNug],
    [redAlloyWire,  null,           redAlloyWire],
    [thaumiumNug,   thaumiumNug,    thaumiumNug]
]);

# 1K Essentia Storage Component
mods.thaumcraft.Arcane.removeRecipe(oneKEssentiaComponent);
mods.thaumcraft.Arcane.addShaped(
    "thaumicenergistics.TESTORAGE",
    oneKEssentiaComponent,
    "ordo 2, ignis 1", [
    [redAlloyWire,      pureCertusQuartz,       redAlloyWire],
    [pureCertusQuartz,  calculationProcessor,   pureCertusQuartz],
    [redAlloyWire,      pureCertusQuartz,       redAlloyWire]
]);

# 1K Essentia Storage Cell
recipes.remove(oneKEssentiaCell);
recipes.addShaped(oneKEssentiaCell, [
    [thaumiumNug,   wardedGlass,            thaumiumNug],
    [redAlloyWire,  oneKEssentiaComponent,  redAlloyWire],
    [thaumiumNug,   thaumiumNug,            thaumiumNug]
]);
recipes.addShapeless(oneKEssentiaCell, [oneKEssentiaComponent, meEssentiaHousing]);

################################################################
### INFUSION TIER ##############################################
################################################################
# 4K Essentia Storage Component
mods.thaumcraft.Arcane.removeRecipe(fourKEssentiaComponent);
mods.thaumcraft.Arcane.addShaped(
    "thaumicenergistics.TESTORAGE",
    fourKEssentiaComponent,
    "ordo 4, ignis 2", [
    [redAlloyWire,          oneKEssentiaComponent,  redAlloyWire],
    [oneKEssentiaComponent, logicProcessor,         oneKEssentiaComponent],
    [redAlloyWire,          oneKEssentiaComponent,  redAlloyWire]
]);

# 4K Essentia Storage Cell
recipes.remove(fourKEssentiaCell);
recipes.addShaped(fourKEssentiaCell, [
    [thaumiumNug,   wardedGlass,            thaumiumNug],
    [redAlloyWire,  fourKEssentiaComponent, redAlloyWire],
    [thaumiumNug,   thaumiumNug,            thaumiumNug]
]);
recipes.addShapeless(fourKEssentiaCell, [fourKEssentiaComponent, meEssentiaHousing]);

################################################################
### VOID TIER ##################################################
################################################################
# 16K Essentia Storage Component
mods.thaumcraft.Arcane.removeRecipe(sixteenKEssentiaComponent);
mods.thaumcraft.Arcane.addShaped(
    "thaumicenergistics.TESTORAGE",
    sixteenKEssentiaComponent,
    "ordo 8, ignis 4", [
    [salisMundus,               fourKEssentiaComponent, salisMundus],
    [fourKEssentiaComponent,    engineeringProcessor,   fourKEssentiaComponent],
    [salisMundus,               fourKEssentiaComponent, salisMundus]
]);

# 16K Essentia Storage Cell
recipes.remove(sixteenKEssentiaCell);
recipes.addShaped(sixteenKEssentiaCell, [
    [thaumiumNug,   wardedGlass,                thaumiumNug],
    [redAlloyWire,  sixteenKEssentiaComponent,  redAlloyWire],
    [thaumiumNug,   thaumiumNug,                thaumiumNug]
]);
recipes.addShapeless(sixteenKEssentiaCell, [sixteenKEssentiaComponent, meEssentiaHousing]);

# 64K Essentia Storage Component
mods.thaumcraft.Arcane.removeRecipe(sixtyFourKEssentiaComponent);
mods.thaumcraft.Arcane.addShaped(
    "thaumicenergistics.TESTORAGE",
    sixtyFourKEssentiaComponent,
    "ordo 16, ignis 8", [
    [salisMundus,               sixteenKEssentiaComponent,  salisMundus],
    [sixteenKEssentiaComponent, engineeringProcessor,       sixteenKEssentiaComponent],
    [salisMundus,               sixteenKEssentiaComponent,  salisMundus]
]);

# 64K Essentia Storage Cell
recipes.remove(sixtyFourKEssentiaCell);
recipes.addShaped(sixtyFourKEssentiaCell, [
    [thaumiumNug,   wardedGlass,                    thaumiumNug],
    [redAlloyWire,  sixtyFourKEssentiaComponent,    redAlloyWire],
    [thaumiumNug,   thaumiumNug,                    thaumiumNug]
]);
recipes.addShapeless(sixtyFourKEssentiaCell, [sixtyFourKEssentiaComponent, meEssentiaHousing]);
