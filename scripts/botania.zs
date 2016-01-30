# Materials
var livingRock                  = <Botania:livingrock>;
var livingRockSlab              = <Botania:livingrock0Slab>;
var livingWood                  = <Botania:livingwood>;
var manaSteel                   = <Botania:manaResource>;
var manaPearl                   = <Botania:manaResource:1>;
var manaDiamond                 = <Botania:manaResource:2>;
var terraSteel                  = <Botania:manaResource:4>;
var gaiaSpirit                  = <Botania:manaResource:5>;
var terraSteelNug               = <Botania:manaResource:18>;
var manaPylon                   = <Botania:pylon>;
var naturaPylon                 = <Botania:pylon:1>;
var gaiaPylon                   = <Botania:pylon:2>;
var blockOfManaSteel            = <Botania:storage>;
var runeOfEarth                 = <Botania:rune>;
var runeOfFire                  = <Botania:rune:1>;
var runeOfWater                 = <Botania:rune:2>;
var runeOfAir                   = <Botania:rune:3>;
var runeOfSpring                = <Botania:rune:4>;
var runeOfSummer                = <Botania:rune:5>;
var runeOfAutum                 = <Botania:rune:6>;
var runeOfWinter                = <Botania:rune:7>;
var runeOfMana                  = <Botania:rune:8>;
var runeOfLust                  = <Botania:rune:9>;
var runeOfGluttony              = <Botania:rune:10>;
var runeOfGreed                 = <Botania:rune:11>;
var runeOfSloth                 = <Botania:rune:12>;
var runeOfWrath                 = <Botania:rune:13>;
var runeOfEnvy                  = <Botania:rune:14>;
var runeOfPride                 = <Botania:rune:15>;
var pulsatingIronNug            = <EnderIO:itemMaterial:3>;
var goldIngot                   = <minecraft:gold_ingot>;
var searedBrick                 = <TConstruct:materials:2>;
var arcaneStone                 = <Thaumcraft:blockCosmeticSolid:6>;
var alchemicalConstruct         = <Thaumcraft:blockMetalDevice:9>;
var alchemicalCentrifuge        = <Thaumcraft:blockTube:2>;
var primalCharm                 = <Thaumcraft:ItemResource:15>;
var balancedShard               = <Thaumcraft:ItemShard:6>;

# Devices
var alchemyCatalyst             = <Botania:alchemyCatalyst>;
var petalApothecary             = <Botania:altar>;
var botanicalBrewery            = <Botania:brewery>;
var runicAltar                  = <Botania:runeAltar>;
var terraPlate                  = <Botania:terraPlate>;
var elvenGatewayCore            = <Botania:alfheimPortal>;


# Ore Dictionary Items
var ironNug                     = <ore:nuggetIron>;
var anyPetal                    = <ore:anyPetal>;

################################################################
### Removal ####################################################
################################################################

################################################################
### ALCHEMY TIER ###############################################
################################################################

# Apothecary
recipes.remove(petalApothecary);
recipes.addShaped(petalApothecary, [
    [searedBrick,   null,           searedBrick],
    [anyPetal,      searedBrick,    anyPetal],
    [arcaneStone,   searedBrick,    arcaneStone]
]);

# Alchemy Catalyst
recipes.remove(alchemyCatalyst);
recipes.addShaped(alchemyCatalyst, [
    [livingRock,    manaPearl,              livingRock],
    [goldIngot,     alchemicalConstruct,    goldIngot],
    [livingRock,    livingRock,             livingRock]
]);

# Runic Altar
recipes.remove(runicAltar);
recipes.addShaped(runicAltar, [
    [livingRockSlab,    livingRockSlab,     livingRockSlab],
    [balancedShard,     primalCharm,        balancedShard],
    [livingRock,        manaDiamond,        livingRock]
]);

################################################################
### INFUSTION TIER #############################################
################################################################
# Tier Implies:
#   Mana Enchanter

# Terrestrial Agglomeration Plate
recipes.remove(terraPlate);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    blockOfManaSteel,
    [runeOfEarth, searedBrick, runeOfFire, searedBrick, runeOfWater, searedBrick, runeOfAir, searedBrick],
    "terra 32, praecantatio 32",
    terraPlate,
    4
);

# Mana Pylon
recipes.remove(manaPylon);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    manaDiamond,
    [manaSteel, goldIngot, manaSteel, goldIngot],
    "praecantatio 16, auram 8",
    manaPylon,
    4
);

# Natura Pylon
recipes.remove(naturaPylon);
mods.thaumcraft.Arcane.addShaped(
    "INFUSION",
    naturaPylon,
    "terra 30", [
    [pulsatingIronNug,  terraSteelNug,  pulsatingIronNug],
    [terraSteelNug,     manaPylon,      terraSteelNug],
    [pulsatingIronNug,  terraSteelNug,  pulsatingIronNug]
]);

# Botany Brewery
recipes.remove(botanicalBrewery);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    alchemicalCentrifuge,
    [manaPearl, livingRockSlab, livingRockSlab, livingRockSlab, manaPearl, livingRockSlab, livingRockSlab, livingRockSlab],
    "sano 16, venenum 16, permutatio 32",
    botanicalBrewery,
    2
);

# Elven Gateway Core
recipes.remove(elvenGatewayCore);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    livingWood,
    [terraSteel, terraSteel, terraSteel, terraSteel],
    "iter 32, herba 64, arbor 32",
    elvenGatewayCore,
    2
);

