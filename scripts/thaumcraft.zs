# Materials
var pixieDust                   = <Botania:manaResource:8>;
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
var dynamicMaterial             = <customitems:dynamic_material>;
var perpetualMaterial           = <customitems:perpetual_material>;
var airEssence                  = <magicalcrops:magicalcrops_AirEssence>;
var earthEssence                = <magicalcrops:magicalcrops_EarthEssence>;
var fireEssence                 = <magicalcrops:magicalcrops_FireEssence>;
var waterEssence                = <magicalcrops:magicalcrops_WaterEssence>;
var orderEssence                = <magicalcrops:magicalcrops_InvarEssence>;
var entropyEssence              = <magicalcrops:magicalcrops_ObsidianEssence>;
var cobble                      = <minecraft:cobblestone>;
var ironBinding                 = <TConstruct:binding:2>;
var copperBinding               = <TConstruct:binding:13>;
var thaumiumBinding             = <TConstruct:binding:31>;
var silverBinding               = <TConstruct:binding:1023>;
var thaumiumToughBinding        = <TConstruct:toughBinding:31>;
var thaumiumPlate               = <TConstruct:heavyPlate:31>;
var arcaneStoneBricks           = <Thaumcraft:blockCosmeticSolid:7>;
var thaumiumIngot               = <Thaumcraft:ItemResource:2>;
var enchantedFabric             = <Thaumcraft:ItemResource:7>;
var voidIngot                   = <Thaumcraft:ItemResource:16>;
var voidSeed                    = <Thaumcraft:ItemResource:17>;
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
var crystalEssentiaAir          = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
var crystalEssentiaFire         = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "ignis"}]});
var crystalEssentiaWater        = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "aqua"}]});
var crystalEssentiaEarth        = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "terra"}]});
var crystalEssentiaOrder        = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "ordo"}]});
var crystalEssentiaEntropy      = <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "perditio"}]});

# Devices
var runicMatrix                 = <Thaumcraft:blockStoneDevice:2>;

# Equipment
var thaumiumHelm                = <Thaumcraft:ItemHelmetThaumium>;
var thaumiumChest               = <Thaumcraft:ItemChestplateThaumium>;
var thaumiumLeggings            = <Thaumcraft:ItemLeggingsThaumium>;
var thaumiumBoots               = <Thaumcraft:ItemBootsThaumium>;
var invarHelm                   = <ThermalFoundation:armor.helmetInvar>;
var invarChest                  = <ThermalFoundation:armor.plateInvar>;
var invarLeggings               = <ThermalFoundation:armor.legsInvar>;
var invarBoots                  = <ThermalFoundation:armor.bootsInvar>;
var voidHelm                    = <Thaumcraft:ItemHelmetVoid>;
var voidChest                   = <Thaumcraft:ItemChestplateVoid>;
var voidLeggings                = <Thaumcraft:ItemLeggingsVoid>;
var voidBoots                   = <Thaumcraft:ItemBootsVoid>;

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

# Thaumium Helm
recipes.remove(thaumiumHelm);
recipes.addShaped(thaumiumHelm, [
    [enchantedFabric,   thaumiumIngot,                          enchantedFabric],
    [thaumiumIngot,     invarHelm.anyDamage().marked("inp"),    thaumiumIngot],
    [null,              null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Thaumium Chest
recipes.remove(thaumiumChest);
recipes.addShaped(thaumiumChest, [
    [enchantedFabric,   null,                                  enchantedFabric],
    [thaumiumIngot,     invarChest.anyDamage().marked("inp"),   thaumiumIngot],
    [null,              thaumiumPlate,                          null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Thaumium Leggings
recipes.remove(thaumiumLeggings);
recipes.addShaped(thaumiumLeggings, [
    [thaumiumBinding,   invarLeggings.anyDamage().marked("inp"),    thaumiumBinding],
    [thaumiumIngot,     null,                                       thaumiumIngot],
    [thaumiumIngot,     null,                                       thaumiumIngot]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Thaumium Boots
recipes.remove(thaumiumBoots);
recipes.addShaped(thaumiumBoots, [
    [thaumiumIngot, invarBoots.anyDamage().marked("inp"),   thaumiumIngot],
    [null,          null,                                   null],
    [null,          null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Air Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    airShard * 4,
    "aer 8", [
    [airEssence,            crystalEssentiaAir, airEssence],
    [crystalEssentiaAir,    balancedShard,      crystalEssentiaAir],
    [airEssence,            crystalEssentiaAir, airEssence]
]);

# Fire Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    fireShard * 4,
    "ignis 8", [
    [fireEssence,           crystalEssentiaFire,    fireEssence],
    [crystalEssentiaFire,   balancedShard,          crystalEssentiaFire],
    [fireEssence,           crystalEssentiaFire,    fireEssence]
]);

# Water Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    waterShard * 4,
    "aqua 8", [
    [waterEssence,          crystalEssentiaWater,   waterEssence],
    [crystalEssentiaWater,  balancedShard,          crystalEssentiaWater],
    [waterEssence,          crystalEssentiaWater,   waterEssence]
]);

# Earth Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    earthShard * 4,
    "terra 8", [
    [earthEssence,          crystalEssentiaEarth,   earthEssence],
    [crystalEssentiaEarth,  balancedShard,          crystalEssentiaEarth],
    [earthEssence,          crystalEssentiaEarth,   earthEssence]
]);

# Order Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    orderShard * 4,
    "ordo 8", [
    [orderEssence,          crystalEssentiaOrder,   orderEssence],
    [crystalEssentiaOrder,  balancedShard,          crystalEssentiaOrder],
    [orderEssence,          crystalEssentiaOrder,   orderEssence]
]);

# Entropy Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    entropyShard * 4,
    "perditio 8", [
    [entropyEssence,            crystalEssentiaEntropy, entropyEssence],
    [crystalEssentiaEntropy,    balancedShard,          crystalEssentiaEntropy],
    [entropyEssence,            crystalEssentiaEntropy, entropyEssence]
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
# Perpetual Material
perpetualMaterial.displayName = "\u00A78Perpetual Material";
perpetualMaterial.addTooltip(format.gray("Being near this stuff makes you feel more serious."));

# Dynamic Material
dynamicMaterial.displayName = "\u00A75Dynamic Material";
dynamicMaterial.addTooltip(format.gray("It hums. The humming makes you feel funny."));

# Void Seed
mods.thaumcraft.Crucible.removeRecipe(voidSeed);
mods.thaumcraft.Crucible.addRecipe("ELDRITCHMINOR", voidSeed, pixieDust, "alienis 2, tenebrae 8, vacuos 8");

# Void Helm
recipes.remove(voidHelm);
recipes.addShaped(voidHelm, [
    [null,      voidIngot,                              null],
    [voidIngot, thaumiumHelm.anyDamage().marked("inp"), voidIngot],
    [null,      null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Void Chest
recipes.remove(voidChest);
recipes.addShaped(voidChest, [
    [voidIngot, null,                                       voidIngot],
    [voidIngot, thaumiumChest.anyDamage().marked("inp"),    voidIngot],
    [null,      voidIngot,                                  null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Void Leggings
recipes.remove(voidLeggings);
recipes.addShaped(voidLeggings, [
    [voidIngot, thaumiumLeggings.anyDamage().marked("inp"), voidIngot],
    [voidIngot, null,                                       voidIngot],
    [null,      null,                                       null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Void Boots
recipes.remove(voidBoots);
recipes.addShaped(voidBoots, [
    [voidIngot, thaumiumBoots.anyDamage().marked("inp"),    voidIngot],
    [null,      null,                                       null],
    [null,      null,                                       null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);
