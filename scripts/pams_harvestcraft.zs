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
var meatIngotRaw                = <MineFactoryReloaded:meat.ingot.raw>;
var nutritionBarR               = <customitems:nutrition_bar_r>;
var nutritionBarG               = <customitems:nutrition_bar_g>;
var nutritionBarB               = <customitems:nutrition_bar_b>;
var salt                        = <harvestcraft:saltItem>;

# Food
var foodFutoMaki                = <harvestcraft:futomakiItem>;
var foodCaliforniaRoll          = <harvestcraft:californiarollItem>;
var foodSeaweed                 = <harvestcraft:seaweedItem>;
var foodCucumber                = <harvestcraft:cucumberItem>;
var foodRice                    = <harvestcraft:riceItem>;
var foodAvocodo                 = <harvestcraft:avocadoItem>;
var foodBoiledEgg               = <harvestcraft:boiledeggItem>;
var foodGinger                  = <harvestcraft:gingerItem>;
var foodRadish                  = <harvestcraft:radishItem>;
var foodWinterSquash            = <harvestcraft:wintersquashItem>;

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
var preparedHide                = <customitems:prepared_hide>;
var cuttingBoard                = <harvestcraft:cuttingboardItem>;

# Ore Dictionary Items
var allGlassBlocks              = <ore:blockGlass>;
var allStickyStuff              = <ore:allStickyStuff>;
var orePressedWax               = <ore:materialPressedwax>;
var oreSawdust                  = <ore:dustWood>;
var oreCitrus                   = <ore:listAllcitrus>;
var oreGreenVeggie              = <ore:listAllgreenveggie>;
var oreGrain                    = <ore:listAllgrain>;
var oreDyeRed                   = <ore:dyeRed>;
var oreDyeGreen                 = <ore:dyeGreen>;
var oreDyeBlue                  = <ore:dyeBlue>;
var oreFruit                    = <ore:fruit>;
var oreRawFish                  = <ore:listAllfishraw>;

################################################################
### Removal ####################################################
################################################################


################################################################
### STONE TIER #################################################
################################################################
# Flowers to Floral Powder
recipes.removeShapeless(<minecraft:dye:1>, [<minecraft:red_flower>]);
recipes.removeShapeless(<minecraft:dye:11>, [<minecraft:yellow_flower>]);
var dyeCounter = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16] as int[];
for i in dyeCounter {
    var tempFlower  = <weeeflowers:Flower>.definition.makeStack(i - 1);
    var tempPowder  = <Botania:dye>.definition.makeStack(i - 1);
    var tempDye     = <minecraft:dye>.definition.makeStack(i - 1);
    recipes.removeShapeless(tempDye, [<minecraft:glass_bottle>, <*>, <*>]);
    recipes.removeShapeless(tempDye, [<weeeflowers:Flower:*>]);
}
recipes.addShapeless(<Botania:dye:0> * 2, [<weeeflowers:Flower:0>]);
recipes.addShapeless(<Botania:dye:1> * 2, [<weeeflowers:Flower:1>]);
recipes.addShapeless(<Botania:dye:2> * 2, [<weeeflowers:Flower:2>]);
recipes.addShapeless(<Botania:dye:3> * 2, [<weeeflowers:Flower:3>]);
recipes.addShapeless(<Botania:dye:4> * 2, [<minecraft:yellow_flower>]);
recipes.addShapeless(<Botania:dye:5> * 2, [<weeeflowers:Flower:4>]);
recipes.addShapeless(<Botania:dye:6> * 2, [<weeeflowers:Flower:5>]);
recipes.addShapeless(<Botania:dye:7> * 2, [<weeeflowers:Flower:6>]);
recipes.addShapeless(<Botania:dye:8> * 2, [<weeeflowers:Flower:7>]);
recipes.addShapeless(<Botania:dye:9> * 2, [<weeeflowers:Flower:8>]);
recipes.addShapeless(<Botania:dye:10> * 2, [<weeeflowers:Flower:9>]);
recipes.addShapeless(<Botania:dye:11> * 2, [<weeeflowers:Flower:10>]);
recipes.addShapeless(<Botania:dye:12> * 2, [<weeeflowers:Flower:11>]);
recipes.addShapeless(<Botania:dye:13> * 2, [<weeeflowers:Flower:12>]);
recipes.addShapeless(<Botania:dye:14> * 2, [<minecraft:red_flower>]);
recipes.addShapeless(<Botania:dye:15> * 2, [<weeeflowers:Flower:13>]);

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
recipes.addShaped(preparedHide, [
    [null,          orePressedWax,  null],
    [orePressedWax, leather,        orePressedWax],
    [null,          orePressedWax,  null]
]);
mods.tconstruct.Drying.addRecipe(preparedHide, leatherHard, 8000);

# Futo Maki
recipes.remove(foodFutoMaki);
recipes.addShapeless(foodFutoMaki * 6, [
    cuttingBoard,
    foodBoiledEgg,
    foodGinger,
    foodCucumber,
    foodWinterSquash,
    foodRice,
    foodRadish,
    foodSeaweed
]);

# California Roll
recipes.remove(foodCaliforniaRoll);
recipes.addShapeless(foodCaliforniaRoll * 6, [
    cuttingBoard,
    oreRawFish,
    foodAvocodo,
    foodCucumber,
    foodSeaweed,
    foodRice
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


################################################################
### INFUSION TIER ##############################################
################################################################
# Nutrient Block R
recipes.remove(nutritionBarR);
recipes.addShaped(nutritionBarR , [
    [oreGrain,      oreDyeRed,      oreGrain],
    [oreSawdust,    meatIngotRaw,   oreSawdust],
    [oreGrain,      salt,           oreGrain]
]);

# Nutrient Block G
recipes.remove(nutritionBarG);
recipes.addShaped(nutritionBarG , [
    [oreGreenVeggie,    oreDyeGreen,    oreGreenVeggie],
    [oreSawdust,        meatIngotRaw,   oreSawdust],
    [oreGreenVeggie,    salt,           oreGreenVeggie]
]);

# Nutrient Block B
recipes.remove(nutritionBarB);
recipes.addShaped(nutritionBarB , [
    [oreFruit,      oreDyeBlue,     oreFruit],
    [oreSawdust,    meatIngotRaw,   oreSawdust],
    [oreFruit,      salt,           oreFruit]
]);