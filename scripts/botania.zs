# Materials
var livingrock                  = <Botania:livingrock>;
var livingrockSlab              = <Botania:livingrock0Slab>;
var livingwood                  = <Botania:livingwood>;
var manasteelIngot              = <Botania:manaResource>;
var manaPearl                   = <Botania:manaResource:1>;
var manaDiamond                 = <Botania:manaResource:2>;
var terrasteelIngot             = <Botania:manaResource:4>;
var gaiaSpirit                  = <Botania:manaResource:5>;
var elementiumIngot             = <Botania:manaResource:7>;
var pixieDust                   = <Botania:manaResource:8>;
var terrasteelNug               = <Botania:manaResource:18>;
var manaweaveCloth              = <Botania:manaResource:22>;
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
var runeOfAutumn                = <Botania:rune:6>;
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
var airEssence                  = <magicalcrops:magicalcrops_AirEssence>;
var earthEssence                = <magicalcrops:magicalcrops_EarthEssence>;
var fireEssence                 = <magicalcrops:magicalcrops_FireEssence>;
var waterEssence                = <magicalcrops:magicalcrops_WaterEssence>;
var orderEssence                = <magicalcrops:magicalcrops_InvarEssence>;
var entropyEssence              = <magicalcrops:magicalcrops_ObsidianEssence>;
var blazePowder                 = <minecraft:blaze_powder>;
var goldIngot                   = <minecraft:gold_ingot>;
var book                        = <minecraft:book>;
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
var openCrate                   = <Botania:openCrate>;

# Equipment
var thaumiumHelm                = <Thaumcraft:ItemHelmetThaumium>;
var thaumiumChest               = <Thaumcraft:ItemChestplateThaumium>;
var thaumiumLeggings            = <Thaumcraft:ItemLeggingsThaumium>;
var thaumiumBoots               = <Thaumcraft:ItemBootsThaumium>;
var manasteelHelm               = <Botania:manasteelHelm>;
var manasteelChest              = <Botania:manasteelChest>;
var manasteelLeggings           = <Botania:manasteelLegs>;
var manasteelBoots              = <Botania:manasteelBoots>;
var terrasteelHelm              = <Botania:terrasteelHelm>;
var terrasteelChest             = <Botania:terrasteelChest>;
var terrasteelLeggings          = <Botania:terrasteelLegs>;
var terrasteelBoots             = <Botania:terrasteelBoots>;
var elementiumHelm              = <Botania:elementiumHelm>;
var elementiumChest             = <Botania:elementiumChest>;
var elementiumLeggings          = <Botania:elementiumLegs>;
var elementiumBoots             = <Botania:elementiumBoots>;
var lexicaBotania               = <Botania:lexicon>;

# Ore Dictionary Items
var ironNug                     = <ore:nuggetIron>;
var anyPetal                    = <ore:anyPetal>;
var orePlank                    = <ore:plankWood>;
var oreDustGold                 = <ore:dustGold>;

################################################################
### Removal ####################################################
################################################################

################################################################
### STONE TIER #################################################
################################################################
# Open Crate
recipes.remove(openCrate);
recipes.addShaped(openCrate, [
    [orePlank,  orePlank,   orePlank],
    [orePlank,  null,       orePlank],
    [orePlank,  null,       orePlank]
]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Lexica Botania
recipes.remove(lexicaBotania);
mods.thaumcraft.Arcane.addShapeless(
    "ASPECTS",
    lexicaBotania,
    "terra 1", [book]);

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
    [livingrock,    manaPearl,              livingrock],
    [oreDustGold,   alchemicalConstruct,    oreDustGold],
    [livingrock,    livingrock,             livingrock]
]);

# Runic Altar
recipes.remove(runicAltar);
recipes.addShaped(runicAltar, [
    [livingrockSlab,    gemstoneDust,   livingrockSlab],
    [balancedShard,     primalCharm,    balancedShard],
    [livingrock,        manaDiamond,    livingrock]
]);

# Rune Of Water
mods.botania.RuneAltar.removeRecipe(runeOfWater);
mods.botania.RuneAltar.addRecipe(runeOfWater*2, [manasteelIngot, manaPowder, waterShard, blizzPowder, waterShard, manaPowder], 5200);
# Rune Of Fire
mods.botania.RuneAltar.removeRecipe(runeOfFire);
mods.botania.RuneAltar.addRecipe(runeOfFire*2, [manasteelIngot, manaPowder, fireShard, blazePowder, fireShard, manaPowder], 5200);
# Rune Of Earth
mods.botania.RuneAltar.removeRecipe(runeOfEarth);
mods.botania.RuneAltar.addRecipe(runeOfEarth*2, [manasteelIngot, manaPowder, earthShard, basalzPowder, earthShard, manaPowder], 5200);
# Rune Of Air
mods.botania.RuneAltar.removeRecipe(runeOfAir);
mods.botania.RuneAltar.addRecipe(runeOfAir*2, [manasteelIngot, manaPowder, airShard, blitzPowder, airShard, manaPowder], 5200);
# Rune Of Spring
mods.botania.RuneAltar.removeRecipe(runeOfSpring);
mods.botania.RuneAltar.addRecipe(runeOfSpring, [entropyEssence, runeOfWater, waterEssence, fireEssence, runeOfFire], 8000);
# Rune Of Summer
mods.botania.RuneAltar.removeRecipe(runeOfSummer);
mods.botania.RuneAltar.addRecipe(runeOfSummer, [orderEssence, runeOfAir, airEssence, earthEssence, runeOfEarth], 8000);
# Rune Of Autumn
mods.botania.RuneAltar.removeRecipe(runeOfAutumn);
mods.botania.RuneAltar.addRecipe(runeOfAutumn, [entropyEssence, runeOfFire, fireEssence, airEssence, runeOfAir], 8000);
# Rune Of Winter
mods.botania.RuneAltar.removeRecipe(runeOfWinter);
mods.botania.RuneAltar.addRecipe(runeOfWinter, [orderEssence, runeOfEarth, earthEssence, waterEssence, runeOfWater], 8000);

# Manasteel Helm
recipes.remove(manasteelHelm);
recipes.addShaped(manasteelHelm, [
    [manaweaveCloth,    manasteelIngot,                         manaweaveCloth],
    [manasteelIngot,    thaumiumHelm.anyDamage().marked("inp"), manasteelIngot],
    [null,              null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Manasteel Chest
recipes.remove(manasteelChest);
recipes.addShaped(manasteelChest, [
    [manaweaveCloth,    null,                                       manaweaveCloth],
    [manasteelIngot,    thaumiumChest.anyDamage().marked("inp"),    manasteelIngot],
    [manasteelIngot,    manaDiamond,                                manasteelIngot]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Manasteel Leggings
recipes.remove(manasteelLeggings);
recipes.addShaped(manasteelLeggings, [
    [manasteelIngot,    thaumiumLeggings.anyDamage().marked("inp"), manasteelIngot],
    [manasteelIngot,    null,                                       manasteelIngot],
    [manasteelIngot,    null,                                       manasteelIngot]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Manasteel Boots
recipes.remove(manasteelBoots);
recipes.addShaped(manasteelBoots, [
    [manasteelIngot,    thaumiumBoots.anyDamage().marked("inp"),    manasteelIngot],
    [null,              null,                                       null],
    [null,              null,                                       null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

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

# Rune Of Lust
mods.botania.RuneAltar.removeRecipe(runeOfLust);
mods.botania.RuneAltar.addRecipe(runeOfLust, [terrasteelIngot, runeOfAir, runeOfSpring], 12000);
# Rune Of Gluttony
mods.botania.RuneAltar.removeRecipe(runeOfGluttony);
mods.botania.RuneAltar.addRecipe(runeOfGluttony, [terrasteelIngot, runeOfFire, runeOfWinter], 12000);
# Rune Of Greed
mods.botania.RuneAltar.removeRecipe(runeOfGreed);
mods.botania.RuneAltar.addRecipe(runeOfGreed, [terrasteelIngot, runeOfEarth, runeOfAutumn], 12000);
# Rune Of Sloth
mods.botania.RuneAltar.removeRecipe(runeOfSloth);
mods.botania.RuneAltar.addRecipe(runeOfSloth, [terrasteelIngot, runeOfWater, runeOfAutumn], 12000);
# Rune Of Wrath
mods.botania.RuneAltar.removeRecipe(runeOfWrath);
mods.botania.RuneAltar.addRecipe(runeOfWrath, [terrasteelIngot, runeOfFire, runeOfSummer], 12000);
# Rune Of Envy
mods.botania.RuneAltar.removeRecipe(runeOfEnvy);
mods.botania.RuneAltar.addRecipe(runeOfEnvy, [terrasteelIngot, runeOfWater, runeOfSummer], 12000);
# Rune Of Pride
mods.botania.RuneAltar.removeRecipe(runeOfPride);
mods.botania.RuneAltar.addRecipe(runeOfPride, [terrasteelIngot, runeOfEarth, runeOfSpring], 12000);
## Rune Of Void
#mods.botania.RuneAltar.removeRecipe(runeOfVoid);
#mods.botania.RuneAltar.addRecipe(runeOfVoid, [terrasteelIngot, runeOfAir, runeOfWinter], 12000);

# Mana Pylon
recipes.remove(manaPylon);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    manaDiamond,
    [manasteelIngot, goldIngot, manasteelIngot, goldIngot],
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
    [pulsatingIronNug,  terrasteelNug,  pulsatingIronNug],
    [terrasteelNug,     manaPylon,      terrasteelNug],
    [pulsatingIronNug,  terrasteelNug,  pulsatingIronNug]
]);

# Botany Brewery
recipes.remove(botanicalBrewery);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    alchemicalCentrifuge,
    [manaPearl, livingrockSlab, livingrockSlab, livingrockSlab, manaPearl, livingrockSlab, livingrockSlab, livingrockSlab],
    "sano 16, venenum 16, permutatio 32",
    botanicalBrewery,
    2
);

## Terrasteel Helm
#recipes.remove(terrasteelHelm);
#recipes.addShaped(terrasteelHelm, [
#    [livingwood,        terrasteelIngot,                            livingwood],
#    [terrasteelIngot,   manasteelHelm.anyDamage().marked("inp"),    terrasteelIngot],
#    [null,              null,                                       null]],
#    function(output, inputs, crafting) {
#        return output.withDamage(max(0, inputs.inp.damage));
#    }
#);
#
## Terrasteel Chest
#recipes.remove(terrasteelChest);
#recipes.addShaped(terrasteelChest, [
#    [terrasteelIngot,   null,                                       terrasteelIngot],
#    [terrasteelIngot,   manasteelChest.anyDamage().marked("inp"),   terrasteelIngot],
#    [livingwood,        terrasteelIngot,                            livingwood]],
#    function(output, inputs, crafting) {
#        return output.withDamage(max(0, inputs.inp.damage));
#    }
#);
#
## Terrasteel Leggings
#recipes.remove(terrasteelLeggings);
#recipes.addShaped(terrasteelLeggings, [
#    [terrasteelIngot,   manasteelLeggings.anyDamage().marked("inp"),    terrasteelIngot],
#    [livingwood,        null,                                           livingwood],
#    [terrasteelIngot,   null,                                           terrasteelIngot]],
#    function(output, inputs, crafting) {
#        return output.withDamage(max(0, inputs.inp.damage));
#    }
#);
#
## Terrasteel Boots
#recipes.remove(terrasteelBoots);
#recipes.addShaped(terrasteelBoots, [
#    [terrasteelIngot,   manasteelBoots.anyDamage().marked("inp"),   terrasteelIngot],
#    [null,              null,                                       null],
#    [null,              null,                                       null]],
#    function(output, inputs, crafting) {
#        return output.withDamage(max(0, inputs.inp.damage));
#    }
#);

# Elven Gateway Core
recipes.remove(elvenGatewayCore);
mods.thaumcraft.Infusion.addRecipe(
    "INFUSION",
    livingwood,
    [terrasteelIngot, terrasteelIngot, terrasteelIngot, terrasteelIngot],
    "iter 32, herba 64, arbor 32",
    elvenGatewayCore,
    2
);

# Elementium Helm
recipes.remove(elementiumHelm);
recipes.addShaped(elementiumHelm, [
    [pixieDust,         elementiumIngot,                            pixieDust],
    [elementiumIngot,   manasteelHelm.anyDamage().marked("inp"),    elementiumIngot],
    [null,              null,                                       null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Elementium Chest
recipes.remove(elementiumChest);
recipes.addShaped(elementiumChest, [
    [elementiumIngot,   null,                                       elementiumIngot],
    [elementiumIngot,   manasteelChest.anyDamage().marked("inp"),   elementiumIngot],
    [pixieDust,         elementiumIngot,                            pixieDust]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Elementium Leggings
recipes.remove(elementiumLeggings);
recipes.addShaped(elementiumLeggings, [
    [elementiumIngot,   manasteelLeggings.anyDamage().marked("inp"),    elementiumIngot],
    [elementiumIngot,   null,                                           elementiumIngot],
    [manaweaveCloth,    null,                                           manaweaveCloth]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Elementium Boots
recipes.remove(elementiumBoots);
recipes.addShaped(elementiumBoots, [
    [elementiumIngot,   manasteelBoots.anyDamage().marked("inp"),   elementiumIngot],
    [null,              null,                                       null],
    [null,              null,                                       null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

