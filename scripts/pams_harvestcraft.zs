# Materials
var freshWater                  = <harvestcraft:freshwaterItem>;
var freshMilk                   = <harvestcraft:freshmilkItem>;
var beeGrub                     = <harvestcraft:grubItem>;
var beeQueen                    = <harvestcraft:queenbeeItem>;
var beeEmptyQueen               = <harvestcraft:queenbeeItem:18>;
var epicBacon                   = <harvestcraft:epicbaconItem>;
var chocolateBacon              = <harvestcraft:chocolatebaconItem>;
var technicolorEssence          = <magicalcrops:magicalcrops_DyeEssence>;
var ironIngot                   = <minecraft:iron_ingot>;
var stoneSlab                   = <minecraft:stone_slab>;
var smoothStone                 = <minecraft:stone>;
var sugar                       = <minecraft:sugar>;
var heavyPlateIron              = <TConstruct:heavyPlate:2>;
var flourPH                     = <harvestcraft:flourItem>;
var dough                       = <harvestcraft:doughItem>;

# Devices

# Equipment
var bucketEmpty                 = <minecraft:bucket>;
var potionEmpty                 = <minecraft:glass_bottle>;
var potionWater                 = <minecraft:potion>;
var bucketMilk                  = <minecraft:milk_bucket>;
var bucketWater                 = <minecraft:water_bucket>;
var potionMilk                  = <MineFactoryReloaded:milkbottle>;
var clayBucketEmpty             = <IguanaTweaksTConstruct:clayBucketFired>;
var clayBucketMilk              = <IguanaTweaksTConstruct:clayBucketMilk>;
var clayBucketWater             = <IguanaTweaksTConstruct:clayBucketWater>;
var juicer                      = <harvestcraft:juicerItem>;
var lunchBox                    = <SpiceOfLife:lunchbox>;
var leather                     = <minecraft:leather>;
var leatherHard                 = <harvestcraft:hardenedleatherItem>;

# Ore Dictionary Items
var allGlassBlocks              = <ore:blockGlass>;
var allStickyStuff              = <ore:allStickyStuff>;
var orePressedWax               = <ore:materialPressedwax>;

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################
# Fresh Water
recipes.remove(freshWater);
recipes.addShapeless(freshWater * 4, [bucketWater.giveBack(bucketEmpty)]);
recipes.addShapeless(freshWater * 4, [clayBucketWater.giveBack(clayBucketEmpty)]);
recipes.addShapeless(freshWater * 4, [potionWater.giveBack(potionEmpty)]);

# Fresh Milk
recipes.remove(freshMilk);
recipes.addShapeless(freshMilk * 4, [bucketMilk.giveBack(bucketEmpty)]);
recipes.addShapeless(freshMilk * 4, [clayBucketMilk.giveBack(clayBucketEmpty)]);
recipes.addShapeless(freshMilk * 4, [potionMilk.giveBack(potionEmpty)]);

# Juicer
recipes.remove(juicer);
recipes.addShapeless(juicer, [smoothStone, stoneSlab]);

# Hardened Leather
recipes.remove(leatherHard);
recipes.addShaped(leatherHard, [
    [null,          orePressedWax,  null],
    [orePressedWax, leather,        orePressedWax],
    [null,          orePressedWax,  null]
]);

################################################################
### TINKER TIER ################################################
################################################################
recipes.remove(lunchBox);
recipes.addShaped(lunchBox, [
    [ironIngot, null,           ironIngot],
    [null,      heavyPlateIron, null],
    [null,      null,           null]
]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Queen Bee
mods.thaumcraft.Crucible.addRecipe(
    "CRUCIBLE",
    beeQueen,
    beeEmptyQueen,
    "victus 1"
);
mods.thaumcraft.Crucible.addRecipe(
    "CRUCIBLE",
    beeQueen,
    beeGrub,
    "sensus 1"
);

# Epic Bacon
recipes.remove(epicBacon);
recipes.addShaped(epicBacon, [
    [sugar,                 technicolorEssence, sugar],
    [technicolorEssence,    chocolateBacon,     technicolorEssence],
    [sugar,                 technicolorEssence, sugar]
]);

# Dough
//InputRF, InputStack, OutputStack, InputFluid
mods.thermalexpansion.Transposer.addFillRecipe(2000, flourPH, dough, <liquid:water> * 100);