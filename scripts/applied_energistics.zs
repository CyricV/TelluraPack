# //Inscriber
# //InputArray, plateA, plateB, OutputStack, TypeString //TypeStrings avaible are "Inscribe" and "Press"
# mods.appeng.Inscriber.addRecipe([<minecraft:gold_block>], <appliedenergistics2:item.ItemMultiMaterial:15>, null, <appliedenergistics2:item.ItemMultiMaterial:18> * 9, "Press");
# mods.appeng.Inscriber.addRecipe([<minecraft:iron_ingot>], <minecraft:redstone>, <minecraft:cobblestone>, <minecraft:piston>, "Inscribe");
# //OutputStack
# mods.appeng.Inscriber.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:15>);# 
# Materials
var energeticAlloy              = <EnderIO:itemAlloy:1>;
var enderCrystal                = <EnderIO:itemMaterial:8>;
var diamond                     = <minecraft:diamond>;
var redstone                    = <minecraft:redstone>;
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
var redAlloyWire                = <ProjRed|Transmission:projectred.transmission.wire>;

# Devices
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;

# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################


################################################################
### TINKER TIER ################################################
################################################################


################################################################
### ALCHEMY TIER ###############################################
################################################################
# Calculation Processor
mods.appeng.Inscriber.removeRecipe(calculationProcessor);
mods.appeng.Inscriber.addRecipe([redAlloyWire], printedCalculationCircuit, printedSilicon, calculationProcessor, "Inscribe");

################################################################
### INFUSTION TIER #############################################
################################################################
# Printed Logic Circuit
mods.appeng.Inscriber.removeRecipe(printedLogicCircuit);
mods.appeng.Inscriber.addRecipe([energeticAlloy], logicPress, null, printedLogicCircuit, "Press");

# Logic Processor
mods.appeng.Inscriber.removeRecipe(logicProcessor);
mods.appeng.Inscriber.addRecipe([redAlloyWire], printedLogicCircuit, printedSilicon, logicProcessor, "Inscribe");

################################################################
### VOID TIER ##################################################
################################################################
# Printed Engineering Circuit
mods.appeng.Inscriber.removeRecipe(printedEngineeringCircuit);
mods.appeng.Inscriber.addRecipe([enderCrystal], engineeringPress, null, printedEngineeringCircuit, "Press");

# Engineering Processor
mods.appeng.Inscriber.removeRecipe(engineeringProcessor);
mods.appeng.Inscriber.addRecipe([redAlloyWire], printedEngineeringCircuit, printedSilicon, engineeringProcessor, "Inscribe");