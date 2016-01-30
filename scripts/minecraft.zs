# Materials
var book                        = <minecraft:book>;
var bucket                      = <minecraft:bucket>;
var paper                       = <minecraft:paper>;
var sugarCane                   = <minecraft:reeds>;
var waterBucket                 = <minecraft:water_bucket>;
var sawdust                     = <ThermalExpansion:material:512>;
var bedrock                     = <minecraft:bedrock>;

# Devices
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;

# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;

################################################################
### Removal ####################################################
################################################################

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

# Bedrock
bedrock.displayName = "\u00A70\u00A7kAmalgam";

################################################################
### TINKER TIER ################################################
################################################################

################################################################
### ALCHEMY TIER ###############################################
################################################################


################################################################
### INFUSTION TIER #############################################
################################################################


################################################################
### VOID TIER ##################################################
################################################################