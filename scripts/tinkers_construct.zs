# Materials
var runeFire                    = <Botania:rune:1>;
var runeEarth                   = <Botania:rune:2>;
var runeAir                     = <Botania:rune:3>;
var dynamicMaterial             = <customitems:dynamic_material>;
var basicGear                   = <EnderIO:itemMachinePart:1>;
var enderPowder                 = <EnderIO:itemPowderIngot:5>;
var soulariumIngot              = <EnderIO:itemAlloy:7>;
var enderShard                  = <GrimoireOfGaia:item.GrimoireOfGaia.Shard:5>;
var firmTofu                    = <harvestcraft:firmtofuItem>;
var leatherHard                 = <harvestcraft:hardenedleatherItem>;
var leather                     = <minecraft:leather>;
var sugarcane                   = <minecraft:reeds>;
var enderPearl                  = <minecraft:ender_pearl>;
var goldOre                     = <minecraft:gold_ore>;
var rottenFlesh                 = <minecraft:rotten_flesh>;
var ballOfMoss                  = <TConstruct:materials:6>;
var lavaCrystal                 = <TConstruct:materials:7>;
var silkyCloth                  = <TConstruct:materials:25>;
var silkyJewel                  = <TConstruct:materials:26>;
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
var jeweledApple                = <TConstruct:diamondApple>;
var canister                    = <TConstruct:heartCanister>;
var bindingIron                 = <TConstruct:binding:2>;
var toughRodIron                = <TConstruct:toughRod:2>;
var goldenHead                  = <TConstruct:goldHead>;
var voidMetalIngot              = <Thaumcraft:ItemResource:16>;
var bloodSyringe                = <ThaumicHorizons:syringeBlood>;
var voidPutty                   = <ThaumicHorizons:voidPutty>;

# Devices
var gearCast                    = <TConstruct:gearCast>;
var slabFurnace                 = <TConstruct:FurnaceSlab>;
var minecraftFurnace            = <minecraft:furnace>;
var punjiStick                  = <TConstruct:trap.punji>;
var shurikenCast                = <TConstruct:Cast>;

# Equipment
var canisterRed                 = <TConstruct:heartCanister:2>;
var canisterYellow              = <TConstruct:heartCanister:4>;
var canisterGreen               = <TConstruct:heartCanister:6>;
var sawStone                    = <ForgeMicroblock:sawStone>;
var sawDiamond                  = <ForgeMicroblock:sawDiamond>;
var sawIron                     = <ForgeMicroblock:sawIron>;
var woodHelm                    = <TConstruct:helmetWood>;
var woodChest                   = <TConstruct:chestplateWood>;
var woodLeggings                = <TConstruct:leggingsWood>;
var woodBoots                   = <TConstruct:bootsWood>;
var knapsack                    = <TConstruct:knapsack>;
var travellersGoggles           = <TConstruct:travelGoggles>;
var travellersVest              = <TConstruct:travelVest>;
var travellersWings             = <TConstruct:travelWings>;
var travellersBoots             = <TConstruct:travelBoots>;
var travellersGloves            = <TConstruct:travelGlove>;
var travellersBelt              = <TConstruct:travelBelt>;

# Ore Dictionary Items
var allGoldOre                  = <ore:oreGold>;
var oreTrueRawMeat              = <ore:trueRawMeat>;
var oreCobbleSlab               = <ore:slabCobblestone>;
var oreIronNug                  = <ore:nuggetIron>;
var oreAluminumNug              = <ore:nuggetAluminum>;

################################################################
### Removal ####################################################
################################################################
# Wooden Armor
recipes.remove(woodHelm);
recipes.remove(woodChest);
recipes.remove(woodLeggings);
recipes.remove(woodBoots);

# OP Travellers Gear
recipes.remove(travellersGoggles);
recipes.remove(travellersVest);
recipes.remove(travellersWings);
recipes.remove(travellersBoots);
recipes.remove(travellersGloves);

# Monster Jerky
mods.tconstruct.Drying.removeRecipe(monsterJerky);

# Canister
recipes.remove(canister);

# Crafted blood from smeltery
mods.tconstruct.Smeltery.removeMelting(rottenFlesh);
mods.tconstruct.Smeltery.removeMelting(coagulatedBlood);

# Jeweled Apple
recipes.remove(jeweledApple);

# Golden Head
recipes.remove(goldenHead);

# Shuriken Cast
mods.tconstruct.Casting.removeTableRecipe(shurikenCast);

# Microblock Saws
recipes.remove(sawStone);
recipes.remove(sawDiamond);
recipes.remove(sawIron);

# Silky Cloth
recipes.remove(silkyCloth);

################################################################
### STONE TIER #################################################
################################################################
# Punji Stick
recipes.remove(punjiStick);
mods.tconstruct.Drying.addRecipe(sugarcane, punjiStick, 6000);

################################################################
### TINKER TIER ################################################
################################################################
# Gear Cast
mods.tconstruct.Casting.removeTableRecipe(gearCast);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, basicGear, true, 50);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, basicGear, true, 50);

# Slab Furnace
recipes.remove(slabFurnace);
recipes.addShaped(slabFurnace * 2, [
    [oreCobbleSlab, oreCobbleSlab,      oreCobbleSlab],
    [null,          minecraftFurnace,   null],
    [oreCobbleSlab, oreCobbleSlab,      oreCobbleSlab]
]);

# Travellers Belt
recipes.remove(travellersBelt);
recipes.addShaped(travellersBelt, [
    [null,          null,           null],
    [oreIronNug,    bindingIron,    oreIronNug],
    [leatherHard,   leatherHard,    leatherHard]
]);

# Knapsack
recipes.remove(knapsack);
recipes.addShaped(knapsack, [
    [leatherHard,   leatherHard,    leatherHard],
    [toughRodIron,  bindingIron,    toughRodIron],
    [leatherHard,   leatherHard,    leatherHard]
]);

# Manyullyn
mods.tconstruct.Smeltery.removeAlloy(<liquid:manyullyn.molten>);
//OutputFluid, InputFluidArray
mods.tconstruct.Smeltery.addAlloy(<liquid:manyullyn.molten> * 32, [<liquid:cobalt.molten> * 16, <liquid:ardite.molten> * 16]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Slime Soil
recipes.remove(slimeSoil);
furnace.remove(searedBrick2);
mods.thermalexpansion.Furnace.removeRecipe(slimeSoil);
mods.thaumcraft.Crucible.addRecipe("ALCHEMICALMANUFACTURE", searedBrick2, searedBrick, "ignis 8");

# Blood
# MOVED TO THE FLUID TRANSPOSER PINK SLIME LOOP IN minefactory_reloaded.zs
# I should not have to create the ore dictionary here, load order is dumb
#oreTrueRawMeat.mirror(<ore:listAllmeatraw>);
#oreTrueRawMeat.addAll(<ore:listAllfishraw>);
#oreTrueRawMeat.remove(firmTofu);
#for item in oreTrueRawMeat.items {
#    #InputRF, InputStack, InputFluid, OutputStack, Chance
#    mods.thermalexpansion.Transposer.addExtractRecipe(2000, item, <liquid:blood> * 50, monsterJerky, 100);
#}
monsterJerky.displayName = "Tough Jerky";

# Lava Crystal
recipes.remove(lavaCrystal);
mods.thaumcraft.Crucible.addRecipe(
    "CRUCIBLE",
    lavaCrystal,
    runeFire,
    "ignis 16, vitreus 8"
);

# Silky Jewel
recipes.remove(silkyJewel);
mods.thaumcraft.Crucible.addRecipe(
    "CRUCIBLE",
    silkyJewel,
    runeAir,
    "pannus 16, lucrum 8"
);

# Ball of Moss
recipes.remove(ballOfMoss);
recipes.remove(silkyJewel);
mods.thaumcraft.Crucible.addRecipe(
    "CRUCIBLE",
    ballOfMoss,
    runeEarth,
    "herba 16, sano 8"
);

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
