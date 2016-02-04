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
var manaPowder                  = <Botania:manaResource:23>;
var manaPylon                   = <Botania:pylon>;
var naturaPylon                 = <Botania:pylon:1>;
var gaiaPylon                   = <Botania:pylon:2>;
var blockOfManaSteel            = <Botania:storage>;
var runeOfWater                 = <Botania:rune>;
var runeOfFire                  = <Botania:rune:1>;
var runeOfEarth                 = <Botania:rune:2>;
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
var blazePowder                 = <minecraft:blaze_powder>;
var goldIngot                   = <minecraft:gold_ingot>;
var searedBrick                 = <TConstruct:materials:2>;
var airShard                    = <Thaumcraft:ItemShard>;
var fireShard                   = <Thaumcraft:ItemShard:1>;
var waterShard                  = <Thaumcraft:ItemShard:2>;
var earthShard                  = <Thaumcraft:ItemShard:3>;
var orderShard                  = <Thaumcraft:ItemShard:4>;
var entropyShard                = <Thaumcraft:ItemShard:5>;
var balancedShard               = <Thaumcraft:ItemShard:6>;
var arcaneStone                 = <Thaumcraft:blockCosmeticSolid:6>;
var alchemicalConstruct         = <Thaumcraft:blockMetalDevice:9>;
var alchemicalCentrifuge        = <Thaumcraft:blockTube:2>;
var primalCharm                 = <Thaumcraft:ItemResource:15>;
var blizzPowder                 = <ThermalFoundation:material:1025>;
var blitzPowder                 = <ThermalFoundation:material:1027>;
var basalzPowder                = <ThermalFoundation:material:1029>;
var gemstoneDust                = <WitchingGadgets:item.WG_Material:13>;

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
    [livingRockSlab,    gemstoneDust,   livingRockSlab],
    [balancedShard,     primalCharm,    balancedShard],
    [livingRock,        manaDiamond,    livingRock]
]);

# Rune Of Water
mods.botania.RuneAltar.removeRecipe(runeOfWater);
mods.botania.RuneAltar.addRecipe(runeOfWater*2, [manaSteel, manaPowder, waterShard, blizzPowder, waterShard, manaPowder], 5200);
# Rune Of Fire
mods.botania.RuneAltar.removeRecipe(runeOfFire);
mods.botania.RuneAltar.addRecipe(runeOfFire*2, [manaSteel, manaPowder, fireShard, blazePowder, fireShard, manaPowder], 5200);
# Rune Of Earth
mods.botania.RuneAltar.removeRecipe(runeOfEarth);
mods.botania.RuneAltar.addRecipe(runeOfEarth*2, [manaSteel, manaPowder, earthShard, basalzPowder, earthShard, manaPowder], 5200);
# Rune Of Air
mods.botania.RuneAltar.removeRecipe(runeOfAir);
mods.botania.RuneAltar.addRecipe(runeOfAir*2, [manaSteel, manaPowder, airShard, blitzPowder, airShard, manaPowder], 5200);

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

