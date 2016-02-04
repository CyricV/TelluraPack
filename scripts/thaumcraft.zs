# Materials
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
var cobble                      = <minecraft:cobblestone>;
var ironBinding                 = <TConstruct:binding:2>;
var copperBinding               = <TConstruct:binding:13>;
var thaumiumBinding             = <TConstruct:binding:31>;
var silverBinding               = <TConstruct:binding:1023>;
var arcaneStoneBricks           = <Thaumcraft:blockCosmeticSolid:7>;
var airShard                    = <Thaumcraft:ItemShard>;
var fireShard                   = <Thaumcraft:ItemShard:1>;
var waterShard                  = <Thaumcraft:ItemShard:2>;
var earthShard                  = <Thaumcraft:ItemShard:3>;
var orderShard                  = <Thaumcraft:ItemShard:4>;
var entropyShard                = <Thaumcraft:ItemShard:5>;
var balancedShard               = <Thaumcraft:ItemShard:6>;
var thaumiumNug                 = <Thaumcraft:ItemNugget:6>;
var voidNug                     = <Thaumcraft:ItemNugget:7>;
var ironWandCap                 = <Thaumcraft:WandCap>;
var goldWandCap                 = <Thaumcraft:WandCap:1>;
var chargedThaumiumWandCap      = <Thaumcraft:WandCap:2>;
var copperWandCap               = <Thaumcraft:WandCap:3>;
var chargedSilverWandCap        = <Thaumcraft:WandCap:4>;
var silverWandCap               = <Thaumcraft:WandCap:5>;
var thaumiumWandCap             = <Thaumcraft:WandCap:6>;
var emptyCore                   = <Thaumcraft:ItemGolemCore:1>;
var useCore                     = <Thaumcraft:ItemGolemCore:8>;

# Devices
var runicMatrix                 = <Thaumcraft:blockStoneDevice:2>;

# Ore Dictionary Items
var ironNug                     = <ore:nuggetIron>;
var copperNug                   = <ore:nuggetCopper>;
var goldNug                     = <ore:nuggetGold>;
var silverNug                   = <ore:nuggetSilver>;


################################################################
### Removal ####################################################
################################################################

################################################################
### TINKER TIER ################################################
################################################################
# Iron Wand Cap
recipes.remove(ironWandCap);
recipes.addShaped(ironWandCap, [
    [ironNug,   ironNug,        ironNug],
    [ironNug,   ironBinding,    ironNug],
    [null,      null,           null]
]);

################################################################
### ALCHEMY TIER ###############################################
################################################################
# Copper Wand Cap
recipes.remove(copperWandCap);
mods.thaumcraft.Arcane.removeRecipe(copperWandCap);
mods.thaumcraft.Arcane.addShaped(
    "CAP_copper",
    copperWandCap,
    "ordo 2, ignis 2, aer 2", [
    [copperNug, copperNug,      copperNug],
    [copperNug, copperBinding,  copperNug],
    [null,      null,           null]
]);

# Gold Wand Cap
recipes.remove(goldWandCap);
mods.thaumcraft.Arcane.removeRecipe(goldWandCap);
mods.thaumcraft.Research.addPrereq("CAP_gold", "CAP_copper", false);
mods.thaumcraft.Arcane.addShaped(
    "CAP_gold",
    goldWandCap,
    "ordo 3, ignis 3, aer 3", [
    [goldNug,   goldNug,        goldNug],
    [goldNug,   copperWandCap,  goldNug],
    [null,      null,           null]
]);

# Runic Matrix
mods.thaumcraft.Arcane.removeRecipe(runicMatrix);
mods.thaumcraft.Arcane.addShaped(
    "INFUSION",
    runicMatrix,
    "ordo 40", [
    [arcaneStoneBricks, runeOfAir,      arcaneStoneBricks],
    [runeOfWater,       runeOfMana,     runeOfFire],
    [arcaneStoneBricks, runeOfEarth,    arcaneStoneBricks]
]);

################################################################
### INFUSTION TIER #############################################
################################################################
# Silver Wand Cap
recipes.remove(silverWandCap);
mods.thaumcraft.Arcane.removeRecipe(silverWandCap);
mods.thaumcraft.Arcane.addShaped(
    "CAP_silver",
    silverWandCap,
    "ordo 4, ignis 4, aer 4", [
    [silverNug, silverNug,      silverNug],
    [silverNug, silverBinding,  silverNug],
    [null,      null,           null]
]);
# mods.thaumcraft.Infusion.removeRecipe(chargedSilverWandCap);
# mods.thaumcraft.Infusion.addRecipe(
#     "CAP_silver",
#     silverWandCap,
#     [airShard, fireShard, earthShard, waterShard],
#     "potentia 8, praecantatio 8",
#     chargedSilverWandCap,
#     2
# );

# Thaumium Wand Cap
mods.thaumcraft.Research.addPrereq("CAP_thaumium", "CAP_silver", false);
recipes.remove(thaumiumWandCap);
mods.thaumcraft.Arcane.removeRecipe(thaumiumWandCap);
mods.thaumcraft.Arcane.addShaped(
    "CAP_thaumium",
    thaumiumWandCap,
    "ordo 6, ignis 6, aer 6", [
    [thaumiumNug,   thaumiumNug,    thaumiumNug],
    [thaumiumNug,   silverWandCap,  thaumiumNug],
    [null,          null,           null]
]);

# Golem Use Core (make it easier)
mods.thaumcraft.Infusion.removeRecipe(useCore);
mods.thaumcraft.Crucible.addRecipe(
    "COREUSE",
    useCore,
    emptyCore,
    "humanus 20, instrumentum 20, machina 20"
);

################################################################
### VOID TIER ##################################################
################################################################
