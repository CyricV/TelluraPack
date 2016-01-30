# Materials
var basicGear                   = <EnderIO:itemMachinePart:1>;
var enderPearl                  = <minecraft:ender_pearl>;
var slimeSoil                   = <TConstruct:CraftedSoil:6>;
var gearCast                    = <TConstruct:gearCast>;
var searedBrick                 = <TConstruct:materials:2>;
var searedBrick2                = <TConstruct:materials:37>;
var blockOfSolidEnder           = <TConstruct:MetalBlock:10>;

# Devices

# Ore Dictionary Items

################################################################
### Removal ####################################################
################################################################
# Liquid Ender (Only in Magma Crucible)
mods.tconstruct.Smeltery.removeMelting(blockOfSolidEnder);
mods.tconstruct.Smeltery.removeMelting(enderPearl);


################################################################
### TINKER TIER ################################################
################################################################
# Gears
mods.tconstruct.Casting.removeTableRecipe(gearCast);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, basicGear, true, 50);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, basicGear, true, 50);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Slime Soil
recipes.remove(slimeSoil);
furnace.remove(searedBrick2);
mods.thermalexpansion.Furnace.removeRecipe(slimeSoil);
mods.thaumcraft.Crucible.addRecipe("ALCHEMICALMANUFACTURE", searedBrick2, searedBrick, "ignis 32");

################################################################
### INFUSTION TIER #############################################
################################################################


################################################################
### VOID TIER ##################################################
################################################################
