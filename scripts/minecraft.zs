# Materials
var fireEssence                 = <magicalcrops:magicalcrops_FireEssence>;
var waterEssence                = <magicalcrops:magicalcrops_WaterEssence>;
var airEssence                  = <magicalcrops:magicalcrops_AirEssence>;
var earthEssence                = <magicalcrops:magicalcrops_EarthEssence>;
var bedrock                     = <minecraft:bedrock>;
var blazePowder                 = <minecraft:blaze_powder>;
var book                        = <minecraft:book>;
var bucket                      = <minecraft:bucket>;
var glowstoneDust               = <minecraft:glowstone_dust>;
var paper                       = <minecraft:paper>;
var sugarCane                   = <minecraft:reeds>;
var waterBucket                 = <minecraft:water_bucket>;
var sawdust                     = <ThermalExpansion:material:512>;

# Devices
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;

# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;
# Power Recipe Fluid Transposer Fix
#var accioMaterial               = <ore:accioMaterial>;
#accioMaterial.remove(fireEssence);
#accioMaterial.remove(waterEssence);
#accioMaterial.remove(airEssence);
#accioMaterial.remove(earthEssence);

################################################################
### Removal ####################################################
################################################################

# Bedrock
bedrock.displayName = "\u00A70\u00A7kAmalgam";

################################################################
### STONE TIER #################################################
################################################################
# Paper
recipes.remove(paper);
recipes.addShapeless(paper * 3, [sugarCane, sugarCane, sugarCane]);
recipes.addShapeless(paper * 2, [book]);
recipes.addShaped(paper * 32, [
    [sawdust,   sawdust,                                sawdust],
    [sawdust,   waterBucket.transformReplace(bucket),   sawdust],
    [sawdust,   sawdust,                                sawdust]
]);

# Bucket
recipes.remove(bucket);
recipes.addShaped(bucket, [
    [allIronNugs,   null,           allIronNugs],
    [allIronNugs,   allIronNugs,    allIronNugs],
    [null,          null,           null]
]);

# Hopper
recipes.remove(hopper);
recipes.addShaped(hopper, [
    [allIronNugs,   null,           allIronNugs],
    [allIronNugs,   chest,          allIronNugs],
    [null,          allIronNugs,    null]
]);


################################################################
### TINKER TIER ################################################
################################################################

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Blaze Powder
#recipes.remove(blazePowder);
#mods.thermalexpansion.Transposer.removeFillRecipe(glowstoneDust, <liquid:redstone>);
#mods.thermalexpansion.Transposer.addFillRecipe(2000, fireEssence, blazePowder * 2, <liquid:redstone> * 100);


################################################################
### INFUSTION TIER #############################################
################################################################


################################################################
### VOID TIER ##################################################
################################################################