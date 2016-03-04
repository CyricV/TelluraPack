# Materials
var redAlloyIngot               = <ProjRed|Core:projectred.core.part:10>;
var electrotineAlloyIngot       = <ProjRed|Core:projectred.core.part:55>;
var ingotCast                   = <TConstruct:metalPattern>;
var redstoneAlloy               = <EnderIO:itemAlloy:3>;
var redAlloyWire                = <ProjRed|Transmission:projectred.transmission.wire>;
var siliconBoule                = <ProjRed|Core:projectred.core.part:11>;
var siliconPR                   = <ProjRed|Core:projectred.core.part:12>;
var siliconInfused              = <ProjRed|Core:projectred.core.part:13>;
var siliconEnergized            = <ProjRed|Core:projectred.core.part:14>;
var motor                       = <ProjRed|Core:projectred.core.part:15>;
var coilCopper                  = <ProjRed|Core:projectred.core.part:16>;
var coilIron                    = <ProjRed|Core:projectred.core.part:17>;
var coilGold                    = <ProjRed|Core:projectred.core.part:18>;
var wovenCloth                  = <ProjRed|Core:projectred.core.part:35>;
var sail                        = <ProjRed|Core:projectred.core.part:36>;
var redIronCompound             = <ProjRed|Core:projectred.core.part:40>;
var sandyCoalCompound           = <ProjRed|Core:projectred.core.part:41>;
var redSiliconCompound          = <ProjRed|Core:projectred.core.part:42>;
var glowingSiliconCompound      = <ProjRed|Core:projectred.core.part:43>;
var electrotineIronCompound     = <ProjRed|Core:projectred.core.part:57>;
var electrotineSiliconCompound  = <ProjRed|Core:projectred.core.part:58>;
var siliconElectrotine          = <ProjRed|Core:projectred.core.part:59>;
var drawPlate                   = <ProjRed|Core:projectred.core.drawplate>;
var dataCard                    = <ProjRed|Core:projectred.core.datacard>;
var upgrade0                    = <ProjRed|Core:projectred.core.part:44>;
var upgrade1                    = <ProjRed|Core:projectred.core.part:45>;
var upgrade2                    = <ProjRed|Core:projectred.core.part:46>;
var upgrade3                    = <ProjRed|Core:projectred.core.part:47>;
var upgrade4                    = <ProjRed|Core:projectred.core.part:48>;
var upgrade5                    = <ProjRed|Core:projectred.core.part:49>;
var upgrade6                    = <ProjRed|Core:projectred.core.part:50>;
var upgrade7                    = <ProjRed|Core:projectred.core.part:51>;
var lowLoadPowerLine            = <ProjRed|Transmission:projectred.transmission.wire:34>;
var lowLoadPowerLineFramed      = <ProjRed|Transmission:projectred.transmission.framewire:34>;
var insulatedWire               = <ProjRed|Transmission:projectred.transmission.wire:1>;
var wool                        = <minecraft:wool>;
var bundledCable                = <ProjRed|Transmission:projectred.transmission.wire:17>;

# Devices
var wireDebugger                = <ProjRed|Core:projectred.core.wiredebugger>;
var screDriver                  = <ProjRed|Core:projectred.core.screwdriver>;

# Ore Dictionary Items
var oreInsulatedWire            = <ore:projredInsulatedWire>;
var oreBundledCable             = <ore:projredBundledCable>;
#var dyeArray                    = {
#    1:<ore:dyeWhite>,
#    2:<ore:dyeOrange>,
#    3:<ore:dyeMagenta>,
#    4:<ore:dyeLightBlue>,
#    5:<ore:dyeYellow>,
#    6:<ore:dyeLime>,
#    7:<ore:dyePink>,
#    8:<ore:dyeGray>,
#    9:<ore:dyeLightGray>,
#    10:<ore:dyeCyan>,
#    11:<ore:dyePurple>,
#    12:<ore:dyeBLue>,
#    13:<ore:dyeBrown>,
#    14:<ore:dyeGreen>,
#    15:<ore:dyeRed>,
#    16:<ore:dyeBlack>
#} as any[int];

################################################################
### Removal ####################################################
################################################################
# Silicon Stuff
recipes.remove(siliconBoule);
furnace.remove(siliconBoule);
mods.thermalexpansion.Furnace.removeRecipe(sandyCoalCompound);
recipes.remove(siliconPR);
recipes.remove(siliconInfused);
furnace.remove(siliconInfused);
mods.thermalexpansion.Furnace.removeRecipe(redSiliconCompound);
recipes.remove(siliconEnergized);
furnace.remove(siliconEnergized);
mods.thermalexpansion.Furnace.removeRecipe(glowingSiliconCompound);
recipes.remove(siliconElectrotine);
furnace.remove(siliconElectrotine);
mods.thermalexpansion.Furnace.removeRecipe(electrotineSiliconCompound);
recipes.remove(redIronCompound);
recipes.remove(redSiliconCompound);
recipes.remove(sandyCoalCompound);
recipes.remove(glowingSiliconCompound);
recipes.remove(electrotineIronCompound);
recipes.remove(electrotineSiliconCompound);

# Components
recipes.remove(motor);
recipes.remove(coilCopper);
recipes.remove(coilIron);
recipes.remove(coilGold);
recipes.remove(sail);
recipes.remove(wovenCloth);

# Upgrades
recipes.remove(dataCard);
recipes.remove(upgrade0);
recipes.remove(upgrade1);
recipes.remove(upgrade2);
recipes.remove(upgrade3);
recipes.remove(upgrade4);
recipes.remove(upgrade5);
recipes.remove(upgrade6);
recipes.remove(upgrade7);

# Power Line
recipes.remove(lowLoadPowerLine);
recipes.remove(lowLoadPowerLineFramed);

################################################################
### STONE TIER #################################################
################################################################


################################################################
### TINKER TIER ################################################
################################################################


################################################################
### ALCHEMY TIER ###############################################
################################################################
# Cables and Wires
recipes.remove(redAlloyWire);
recipes.remove(bundledCable);
recipes.addShapeless(bundledCable, [oreInsulatedWire, oreInsulatedWire, oreInsulatedWire, oreInsulatedWire]);
recipes.addShaped(redAlloyWire * 32, [
    [null,          redstoneAlloy,  null],
    [redstoneAlloy, redstoneAlloy,  redstoneAlloy],
    [null,          redstoneAlloy,  null]
]);
var dyeCounter = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16] as int[];
for i in dyeCounter {
    var tempWire    = <ProjRed|Transmission:projectred.transmission.wire>.definition.makeStack(i);
    var tempWool    = <minecraft:wool>.definition.makeStack(i - 1);
    var tempDye     = <minecraft:wool>.definition.makeStack(i - 1);
    var tempBundle  = <ProjRed|Transmission:projectred.transmission.wire>.definition.makeStack(i + 17);
    recipes.remove(tempWire);
    recipes.addShaped(tempWire * 32,[
        [tempWool,      redstoneAlloy,  tempWool],
        [redstoneAlloy, redstoneAlloy,  redstoneAlloy],
        [tempWool,      redstoneAlloy,  tempWool]
    ]);
    recipes.addShaped(tempBundle * 8,[
        [oreBundledCable,   oreBundledCable,    oreBundledCable],
        [oreBundledCable,   tempDye,            oreBundledCable],
        [oreBundledCable,   oreBundledCable,    oreBundledCable]
    ]);
}


################################################################
### INFUSTION TIER #############################################
################################################################
# Red Alloy Ingot (Tumultuous Material)
recipes.remove(redAlloyIngot);
furnace.remove(redAlloyIngot);
mods.thermalexpansion.Furnace.removeRecipe(redIronCompound);
redAlloyIngot.displayName = "\u00A74Tumultuous Material";
redAlloyIngot.addTooltip(format.gray("Oddly, its warmth is quite pleasant."));
mods.tconstruct.Casting.addTableRecipe(redAlloyIngot, <liquid:pyrotheum> * 250, ingotCast, false, 50);

# Electrotine Alloy Ingot (Deliquescent Material)
recipes.remove(electrotineAlloyIngot);
furnace.remove(electrotineAlloyIngot);
mods.thermalexpansion.Furnace.removeRecipe(electrotineIronCompound);
electrotineAlloyIngot.displayName = "\u00A73Deliquescent Material ";
electrotineAlloyIngot.addTooltip(format.gray("Your fingers sink just a bit into it's surface when you touch it."));
mods.tconstruct.Casting.addTableRecipe(electrotineAlloyIngot, <liquid:cryotheum> * 250, ingotCast, false, 50);

################################################################
### VOID TIER ##################################################
################################################################