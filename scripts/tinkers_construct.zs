# Materials
var basicGear                   = <EnderIO:itemMachinePart:1>;
var enderPowder                 = <EnderIO:itemPowderIngot:5>;
var soulariumIngot              = <EnderIO:itemAlloy:7>;
var enderShard                  = <GrimoireOfGaia:item.GrimoireOfGaia.Shard:5>;
var firmTofu                    = <harvestcraft:firmtofuItem>;
var enderPearl                  = <minecraft:ender_pearl>;
var goldOre                     = <minecraft:gold_ore>;
var rottenFlesh                 = <minecraft:rotten_flesh>;
var coagulatedBlood             = <TConstruct:strangeFood:1>;
var slimeSoil                   = <TConstruct:CraftedSoil:6>;
var searedBrick                 = <TConstruct:materials:2>;
var searedBrick2                = <TConstruct:materials:37>;
var blockOfSolidEnder           = <TConstruct:MetalBlock:10>;
var monsterJerky                = <TConstruct:jerky:5>;
var canisterEmpty               = <TConstruct:heartCanister>;
var heartRed                    = <TConstruct:heartCanister:1>;
var heartYellow                 = <TConstruct:heartCanister:3>;
var heartGreen                  = <TConstruct:heartCanister:5>;
var voidMetalIngot              = <Thaumcraft:ItemResource:16>;
var bloodSyringe                = <ThaumicHorizons:syringeBlood>;
var voidPutty                   = <ThaumicHorizons:voidPutty>;
var dynamicMaterial             = <customitems:dynamic_material>;
var jeweledApple                = <TConstruct:diamondApple>;

# Devices
var gearCast                    = <TConstruct:gearCast>;

# Equipment
var canisterRed                 = <TConstruct:heartCanister:2>;
var canisterYellow              = <TConstruct:heartCanister:4>;
var canisterGreen               = <TConstruct:heartCanister:6>;

# Ore Dictionary Items
var allGoldOre                  = <ore:oreGold>;
var oreTrueRawMeat              = <ore:trueRawMeat>;

################################################################
### Removal ####################################################
################################################################
# Monster Jerky
mods.tconstruct.Drying.removeRecipe(monsterJerky);

# Blood from smeltery
mods.tconstruct.Smeltery.removeMelting(rottenFlesh);
mods.tconstruct.Smeltery.removeMelting(coagulatedBlood);

# Jeweled Apple
recipes.remove(jeweledApple);

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

# Blood
# I should not have to create the ore dictionary here, load order is dumb
#oreTrueRawMeat.mirror(<ore:listAllmeatraw>);
#oreTrueRawMeat.addAll(<ore:listAllfishraw>);
#oreTrueRawMeat.remove(firmTofu);
#for item in oreTrueRawMeat.items {
#    #InputRF, InputStack, InputFluid, OutputStack, Chance
#    mods.thermalexpansion.Transposer.addExtractRecipe(2000, item, <liquid:blood> * 50, monsterJerky, 100);
#}
monsterJerky.displayName = "Tough Jerky";
# MOVED TO minefactory_reloaded.zs BECAUSE MINETWEAKER IS DUMB


################################################################
### INFUSTION TIER #############################################
################################################################
# Liquid Ender (Only in Magma Crucible)
mods.tconstruct.Smeltery.removeMelting(blockOfSolidEnder);
mods.tconstruct.Smeltery.removeMelting(enderPearl);
mods.thermalexpansion.Crucible.addRecipe(80000, blockOfSolidEnder, <liquid:ender> * 1000);
mods.thermalexpansion.Crucible.addRecipe(4000, enderShard, <liquid:ender> * 50);
mods.thermalexpansion.Crucible.addRecipe(4000, enderPowder, <liquid:ender> * 50);

# Red Heart Canister
recipes.remove(canisterRed);
mods.thaumcraft.Infusion.addRecipe(
    "essentiaInjection",
    heartRed,
    [bloodSyringe, soulariumIngot, soulariumIngot, soulariumIngot],
    "machina 16, corpus 16",
    canisterRed,
    4
);

################################################################
### VOID TIER ##################################################
################################################################
# Yellow Heart Canister
recipes.remove(canisterYellow);
mods.thaumcraft.Infusion.addRecipe(
    "VOIDMETAL",
    heartYellow,
    [bloodSyringe, voidMetalIngot, heartRed, voidMetalIngot, heartRed, voidMetalIngot, heartRed, voidMetalIngot],
    "machina 32, corpus 32, sano 8, victus 8",
    canisterYellow,
    6
);

################################################################
### PRIMAL TIER ################################################
################################################################
# Green Heart Canister
recipes.remove(canisterGreen);
mods.thaumcraft.Infusion.addRecipe(
    "voidPutty",
    heartGreen,
    [bloodSyringe, voidPutty, dynamicMaterial, voidPutty, heartYellow, voidPutty, dynamicMaterial, voidPutty, heartYellow, voidPutty, dynamicMaterial, voidPutty, heartYellow, voidPutty, dynamicMaterial, voidPutty],
    "machina 64, corpus 64, sano 32, victus 32, exanimis 16, alienis 16",
    canisterGreen,
    8
);
