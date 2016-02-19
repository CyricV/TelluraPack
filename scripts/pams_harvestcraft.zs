# Materials
var freshWater                  = <harvestcraft:freshwaterItem>;
var freshMilk                   = <harvestcraft:freshmilkItem>;

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

# Ore Dictionary Items
var allGlassBlocks              = <ore:blockGlass>;
var allStickyStuff              = <ore:allStickyStuff>;

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

################################################################
### TINKER TIER ################################################
################################################################