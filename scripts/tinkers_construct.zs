# Materials
var basicGear                   = <EnderIO:itemMachinePart:1>;
var enderPearl                  = <minecraft:ender_pearl>;
var goldOre                     = <minecraft:gold_ore>;
var slimeSoil                   = <TConstruct:CraftedSoil:6>;
var searedBrick                 = <TConstruct:materials:2>;
var searedBrick2                = <TConstruct:materials:37>;
var blockOfSolidEnder           = <TConstruct:MetalBlock:10>;
var enderShard                  = <GrimoireOfGaia:item.GrimoireOfGaia.Shard:5>;
var enderPowder                 = <EnderIO:itemPowderIngot:5>;

# Devices
var gearCast                    = <TConstruct:gearCast>;

# Ore Dictionary Items
var allGoldOre                  = <ore:oreGold>;

################################################################
### Removal ####################################################
################################################################


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
# Liquid Ender (Only in Magma Crucible)
mods.tconstruct.Smeltery.removeMelting(blockOfSolidEnder);
mods.tconstruct.Smeltery.removeMelting(enderPearl);
mods.thermalexpansion.Crucible.addRecipe(80000, blockOfSolidEnder, <liquid:ender> * 1000);
mods.thermalexpansion.Crucible.addRecipe(4000, enderShard, <liquid:ender> * 50);
mods.thermalexpansion.Crucible.addRecipe(4000, enderPowder, <liquid:ender> * 50);


################################################################
### VOID TIER ##################################################
################################################################
