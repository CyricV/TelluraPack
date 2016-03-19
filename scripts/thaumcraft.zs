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
var brainInAJar                 = <Thaumcraft:blockJar:1>;
var vacuumHopper                = <OpenBlocks:vacuumhopper>;

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
var thaumostaticGirdle          = <Thaumcraft:ItemGirdleHover>;
var thaumostaticHarness         = <Thaumcraft:HoverHarness>;

# Ore Dictionary Items
var ironNug                     = <ore:nuggetIron>;
var copperNug                   = <ore:nuggetCopper>;
var goldNug                     = <ore:nuggetGold>;
var silverNug                   = <ore:nuggetSilver>;


################################################################
### Removal ####################################################
################################################################
# Thaumostatic Girdle
#mods.thaumcraft.Research.orphanResearch("HOVERGIRDLE");
mods.thaumcraft.Research.removeResearch("HOVERGIRDLE");
mods.thaumcraft.Infusion.removeRecipe(thaumostaticGirdle);

# Thaumostatic Harness
#mods.thaumcraft.Research.orphanResearch("HOVERHARNESS");
mods.thaumcraft.Research.removeResearch("HOVERHARNESS");
mods.thaumcraft.Infusion.removeRecipe(thaumostaticHarness);

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
mods.thaumcraft.Research.refreshResearchRecipe("BASICTHAUMATURGY");

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
mods.thaumcraft.Research.refreshResearchRecipe("CAP_copper");

# Gold Wand Cap
recipes.remove(goldWandCap);
mods.thaumcraft.Arcane.removeRecipe(goldWandCap);
mods.thaumcraft.Research.clearPrereqs("CAP_gold");
mods.thaumcraft.Research.addPrereq("CAP_gold", "CAP_copper", false);
mods.thaumcraft.Arcane.addShaped(
    "CAP_gold",
    goldWandCap,
    "ordo 3, ignis 3, aer 3", [
    [goldNug,   goldNug,        goldNug],
    [goldNug,   copperWandCap,  goldNug],
    [null,      null,           null]
]);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_gold");

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
mods.thaumcraft.Research.refreshResearchRecipe("INFUSION");

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
    "aer 4", [
    [airEssence,            crystalEssentiaAir, airEssence],
    [crystalEssentiaAir,    balancedShard,      crystalEssentiaAir],
    [airEssence,            crystalEssentiaAir, airEssence]
]);

# Fire Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    fireShard * 4,
    "ignis 4", [
    [fireEssence,           crystalEssentiaFire,    fireEssence],
    [crystalEssentiaFire,   balancedShard,          crystalEssentiaFire],
    [fireEssence,           crystalEssentiaFire,    fireEssence]
]);

# Water Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    waterShard * 4,
    "aqua 4", [
    [waterEssence,          crystalEssentiaWater,   waterEssence],
    [crystalEssentiaWater,  balancedShard,          crystalEssentiaWater],
    [waterEssence,          crystalEssentiaWater,   waterEssence]
]);

# Earth Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    earthShard * 4,
    "terra 4", [
    [earthEssence,          crystalEssentiaEarth,   earthEssence],
    [crystalEssentiaEarth,  balancedShard,          crystalEssentiaEarth],
    [earthEssence,          crystalEssentiaEarth,   earthEssence]
]);

# Order Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    orderShard * 4,
    "ordo 4", [
    [orderEssence,          crystalEssentiaOrder,   orderEssence],
    [crystalEssentiaOrder,  balancedShard,          crystalEssentiaOrder],
    [orderEssence,          crystalEssentiaOrder,   orderEssence]
]);

# Entropy Shard
mods.thaumcraft.Arcane.addShaped(
    "ESSENTIACRYSTAL",
    entropyShard * 4,
    "perditio 4", [
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
mods.thaumcraft.Infusion.removeRecipe(chargedSilverWandCap);
mods.thaumcraft.Infusion.addRecipe(
    "CAP_silver",
    silverWandCap,
    [airShard, fireShard, earthShard, waterShard],
    "potentia 8, praecantatio 4",
    chargedSilverWandCap,
    2
);
mods.thaumcraft.Research.refreshResearchRecipe("CAP_silver");

# Thaumium Wand Cap
mods.thaumcraft.Research.clearPrereqs("CAP_thaumium");
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
mods.thaumcraft.Research.refreshResearchRecipe("CAP_thaumium");

# Brain in a Jar research update
mods.thaumcraft.Research.clearPages("JARBRAIN");
mods.thaumcraft.Research.addPage("JARBRAIN", "tc.research_page.JARBRAIN");
game.setLocalization("en_US", "tc.research_page.JARBRAIN", "You have discovered a way to partially reanimate the brains of those consumed by the Aberrant's rage.<BR>The brain retains some of the hunger it possessed as a zombie and while it can no longer consume brains, it still enjoys eating the thoughts and experiences of those slain nearby. Giving its jar a good shake will make it surrender some of its ill-gotten gains for your own use. You may be able to incorporate it into automation capable devices as well.<BR>You will see particles above the jar when it is full.");
mods.thaumcraft.Research.addInfusionPage("JARBRAIN", brainInAJar);
mods.thaumcraft.Research.addArcanePage("JARBRAIN", vacuumHopper);

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


################################################################
### RESEARCH CONFIGURING #######################################
################################################################
#mods.thaumcraft.Research.moveResearch("CAP_iron", "BASICS", 0, 6);
#mods.thaumcraft.Research.moveResearch("ROD_wood", "BASICS", 0, -6);

# BASIC INFORMATION
# Spooky Basics
#mods.thaumcraft.Research.moveResearch("WARP", "BASICS", 0, 4);
mods.thaumcraft.Research.moveResearch("CRIMSON", "BASICS", 0, 1);
mods.thaumcraft.Research.moveResearch("WARP", "BASICS", 0, 4);

# Starter Information
mods.thaumcraft.Research.clearPrereqs("THAUMONOMICON");
mods.thaumcraft.Research.moveResearch("THAUMONOMICON", "BASICS", 2, -2);
mods.thaumcraft.Research.moveResearch("RESEARCH", "BASICS", 3, 0);
mods.thaumcraft.Research.clearPrereqs("KNOWFRAG");
mods.thaumcraft.Research.moveResearch("KNOWFRAG", "BASICS", 2, 2);
mods.thaumcraft.Research.moveResearch("ENCHANT", "BASICS", 0, 3);
mods.thaumcraft.Research.moveResearch("PECH", "BASICS", -2, 2);
mods.thaumcraft.Research.moveResearch("NODES", "BASICS", -3, 0);
mods.thaumcraft.Research.moveResearch("ORE", "BASICS", 0, -3);
mods.thaumcraft.Research.moveResearch("PLANTS", "BASICS", -2, -2);

# Research
mods.thaumcraft.Research.moveResearch("RESEARCHER1", "BASICS", 4, 0);
mods.thaumcraft.Research.moveResearch("DECONSTRUCTOR", "BASICS", 5, 0);
mods.thaumcraft.Research.moveResearch("RESEARCHER2", "BASICS", 4, 1);
mods.thaumcraft.Research.moveResearch("RESEARCHDUPE", "BASICS", 4, 2);

# Node Stuff
mods.thaumcraft.Research.moveResearch("NODETAPPER1", "BASICS", -4, 0);
mods.thaumcraft.Research.moveResearch("NODETAPPER2", "BASICS", -5, 0);
mods.thaumcraft.Research.moveResearch("NODEPRESERVE", "BASICS", -4, 1);
mods.thaumcraft.Research.moveResearch("NODEJAR", "BASICS", -4, 2);
mods.thaumcraft.Research.moveResearch("NODECATALYZATION", "BASICS", -5, 2);

# THAUMATURGY
# Caps
mods.thaumcraft.Research.moveResearch("CAP_copper", "THAUMATURGY", 2, 0);
mods.thaumcraft.Research.moveResearch("CAP_gold", "THAUMATURGY", 3, 0);
mods.thaumcraft.Research.moveResearch("CAP_silver", "THAUMATURGY", 4, 0);
mods.thaumcraft.Research.moveResearch("CAP_thaumium", "THAUMATURGY", 5, 0);

# Foci
mods.thaumcraft.Research.moveResearch("FOCUSFIRE", "THAUMATURGY", 0, -2);
mods.thaumcraft.Research.moveResearch("FOCUSEXCAVATION", "THAUMATURGY", -1, -2);
mods.thaumcraft.Research.moveResearch("FOCUSWARDING", "THAUMATURGY", -2, -2);
mods.thaumcraft.Research.moveResearch("FOCUSTRADE", "THAUMATURGY", 1, -2);
mods.thaumcraft.Research.moveResearch("FOCUSPORTABLEHOLE", "THAUMATURGY", 2, -2);
mods.thaumcraft.Research.moveResearch("FOCUSPOUCH", "THAUMATURGY", 0, -3);
mods.thaumcraft.Research.moveResearch("FOCUSFROST", "THAUMATURGY", -1, -3);
mods.thaumcraft.Research.moveResearch("FOCUSSHOCK", "THAUMATURGY", 1, -3);
mods.thaumcraft.Research.moveResearch("FOCUSHELLBAT", "THAUMATURGY", 2, -3);
mods.thaumcraft.Research.moveResearch("VAMPBAT", "THAUMATURGY", 3, -3);

# Rods
mods.thaumcraft.Research.moveResearch("ROD_greatwood", "THAUMATURGY", 0, 3);
mods.thaumcraft.Research.moveResearch("ROD_silverwood", "THAUMATURGY", 0, 5);
mods.thaumcraft.Research.moveResearch("ROD_silverwood_staff", "THAUMATURGY", -1, 5);
mods.thaumcraft.Research.moveResearch("SCEPTRE", "THAUMATURGY", 1, 5);
mods.thaumcraft.Research.moveResearch("ROD_greatwood_staff", "THAUMATURGY", 0, 6);
mods.thaumcraft.Research.moveResearch("ROD_obsidian", "THAUMATURGY", 2, 4);
mods.thaumcraft.Research.moveResearch("ROD_obsidian_staff", "THAUMATURGY", 3, 4);
mods.thaumcraft.Research.moveResearch("ROD_ice", "THAUMATURGY", 2, 3);
mods.thaumcraft.Research.moveResearch("ROD_ice_staff", "THAUMATURGY", 3, 3);
mods.thaumcraft.Research.moveResearch("ROD_quartz", "THAUMATURGY", 2, 2);
mods.thaumcraft.Research.moveResearch("ROD_quartz_staff", "THAUMATURGY", 3, 2);
mods.thaumcraft.Research.moveResearch("ROD_reed", "THAUMATURGY", -2, 4);
mods.thaumcraft.Research.moveResearch("ROD_reed_staff", "THAUMATURGY", -3, 4);
mods.thaumcraft.Research.moveResearch("ROD_blaze", "THAUMATURGY", -2, 3);
mods.thaumcraft.Research.moveResearch("ROD_blaze_staff", "THAUMATURGY", -3, 3);
mods.thaumcraft.Research.moveResearch("ROD_bone", "THAUMATURGY", -2, 2);
mods.thaumcraft.Research.moveResearch("ROD_bone_staff", "THAUMATURGY", -3, 2);

# Node
mods.thaumcraft.Research.moveResearch("NODESTABILIZER", "THAUMATURGY", -4, -1);
mods.thaumcraft.Research.moveResearch("NODESTABILIZERADV", "THAUMATURGY", -4, 0);
mods.thaumcraft.Research.moveResearch("VISCHARGERELAY", "THAUMATURGY", -5, -2);
mods.thaumcraft.Research.moveResearch("WANDPED", "THAUMATURGY", -5, -1);
mods.thaumcraft.Research.moveResearch("WANDPEDFOC", "THAUMATURGY", -5, 0);
mods.thaumcraft.Research.moveResearch("VISAMULET", "THAUMATURGY", -6, -1);
mods.thaumcraft.Research.moveResearch("VISPOWER", "THAUMATURGY", -4, -2);
mods.thaumcraft.Research.moveResearch("FOCALMANIPULATION", "THAUMATURGY", -4, -3);

# ALCHEMY
# Metal
mods.thaumcraft.Research.moveResearch("THAUMIUM", "ALCHEMY", 0, 4);
mods.thaumcraft.Research.moveResearch("TRANSIRON", "ALCHEMY", 1, 4);
mods.thaumcraft.Research.moveResearch("TRANSGOLD", "ALCHEMY", 1, 3);
mods.thaumcraft.Research.moveResearch("TRANSCOPPER", "ALCHEMY", 2, 3);
mods.thaumcraft.Research.moveResearch("TRANSTIN", "ALCHEMY", 2, 4);
mods.thaumcraft.Research.moveResearch("TRANSSILVER", "ALCHEMY", 2, 5);
mods.thaumcraft.Research.moveResearch("TRANSLEAD", "ALCHEMY", 1, 5);
mods.thaumcraft.Research.moveResearch("PUREIRON", "ALCHEMY", -1, 4);
mods.thaumcraft.Research.moveResearch("PUREGOLD", "ALCHEMY", -1, 3);
mods.thaumcraft.Research.moveResearch("PURECOPPER", "ALCHEMY", -2, 3);
mods.thaumcraft.Research.moveResearch("PURETIN", "ALCHEMY", -2, 4);
mods.thaumcraft.Research.moveResearch("PURESILVER", "ALCHEMY", -2, 5);
mods.thaumcraft.Research.moveResearch("PURELEAD", "ALCHEMY", -1, 5);

# Essentia Mannipulation
mods.thaumcraft.Research.moveResearch("PHIAL", "ALCHEMY", 0, -3);
mods.thaumcraft.Research.moveResearch("NITOR", "ALCHEMY", 0, -1);
mods.thaumcraft.Research.setSpikey("NITOR", true);
mods.thaumcraft.Research.moveResearch("ALUMENTUM", "ALCHEMY", 2, 0);
mods.thaumcraft.Research.moveResearch("DISTILESSENTIA", "ALCHEMY", 2, -1);
mods.thaumcraft.Research.moveResearch("JARLABEL", "ALCHEMY", 2, -2);
mods.thaumcraft.Research.moveResearch("JARVOID", "ALCHEMY", 2, -3);
mods.thaumcraft.Research.moveResearch("TUBES", "ALCHEMY", 3, -1);
mods.thaumcraft.Research.moveResearch("ESSENTIACRYSTAL", "ALCHEMY", 3, -2);
mods.thaumcraft.Research.moveResearch("TUBEFILTER", "ALCHEMY", 3, 0);
mods.thaumcraft.Research.moveResearch("CENTRIFUGE", "ALCHEMY", 4, 0);
mods.thaumcraft.Research.moveResearch("THAUMATORIUM", "ALCHEMY", 4, 1);

# Essentia Use
mods.thaumcraft.Research.moveResearch("ALCHEMICALDUPLICATION", "ALCHEMY", -3, 0);
mods.thaumcraft.Research.moveResearch("ALCHEMICALMANUFACTURE", "ALCHEMY", -3, -1);
mods.thaumcraft.Research.moveResearch("ENTROPICPROCESSING", "ALCHEMY", -4, 0);
mods.thaumcraft.Research.moveResearch("LIQUIDDEATH", "ALCHEMY", -4, 1);
mods.thaumcraft.Research.moveResearch("BOTTLETAINT", "ALCHEMY", -5, 0);
mods.thaumcraft.Research.moveResearch("ETHEREALBLOOM", "ALCHEMY", -2, 1);
mods.thaumcraft.Research.moveResearch("BATHSALTS", "ALCHEMY", -2, -3);
mods.thaumcraft.Research.moveResearch("ARCANESPA", "ALCHEMY", -3, -3);
mods.thaumcraft.Research.moveResearch("SANESOAP", "ALCHEMY", -2, -4);

# ARTIFICE
# Starting Information
mods.thaumcraft.Research.moveResearch("BASICARTIFACE", "ARTIFICE", 0, 0);
mods.thaumcraft.Research.moveResearch("TABLE", "ARTIFICE", 0, -2);
mods.thaumcraft.Research.moveResearch("RESTABLE", "ARTIFICE", 1, -2);
mods.thaumcraft.Research.moveResearch("ARCTABLE", "ARTIFICE", -1, -2);
mods.thaumcraft.Research.moveResearch("THAUMOMETER", "ARTIFICE", 0, -3);
mods.thaumcraft.Research.setSpikey("THAUMOMETER", true);
mods.thaumcraft.Research.moveResearch("GRATE", "ARTIFICE", -1, -3);
mods.thaumcraft.Research.moveResearch("ARCANESTONE", "ARTIFICE", 1, -3);
mods.thaumcraft.Research.moveResearch("PAVETRAVEL", "ARTIFICE", 3, -3);
mods.thaumcraft.Research.moveResearch("PAVEWARD", "ARTIFICE", 3, -2);
mods.thaumcraft.Research.moveResearch("GOGGLES", "ARTIFICE", 0, -5);
mods.thaumcraft.Research.moveResearch("SINSTONE", "ARTIFICE", 1, -5);
mods.thaumcraft.Research.moveResearch("ARCANEEAR", "ARTIFICE", -1, -5);

# Extras
mods.thaumcraft.Research.moveResearch("WARDEDARCANA", "ARTIFICE", 5, -3);
mods.thaumcraft.Research.moveResearch("LEVITATOR", "ARTIFICE", 5, -2);

# Furnace Stuff
mods.thaumcraft.Research.moveResearch("INFERNALFURNACE", "ARTIFICE", -3, -3);
mods.thaumcraft.Research.moveResearch("BELLOWS", "ARTIFICE", -4, -3);
mods.thaumcraft.Research.moveResearch("FLUXSCRUB", "ARTIFICE", -5, -3);

# Fabric Derivatives
mods.thaumcraft.Research.moveResearch("ENCHFABRIC", "ARTIFICE", 2, 0);
mods.thaumcraft.Research.moveResearch("RUNICARMOR", "ARTIFICE", 3, 0);
mods.thaumcraft.Research.moveResearch("RUNICCHARGED", "ARTIFICE", 3, -1);
mods.thaumcraft.Research.moveResearch("RUNICHEALING", "ARTIFICE", 4, -1);
mods.thaumcraft.Research.moveResearch("RUNICAUGMENTATION", "ARTIFICE", 4, 0);
mods.thaumcraft.Research.moveResearch("RUNICEMERGENCY", "ARTIFICE", 4, 1);
mods.thaumcraft.Research.moveResearch("RUNICKINETIC", "ARTIFICE", 3, 1);
mods.thaumcraft.Research.moveResearch("BOOTSTRAVELLER", "ARTIFICE", 2, 3);

# Runic Stuff
mods.thaumcraft.Research.moveResearch("INFUSION", "ARTIFICE", 0, 3);
mods.thaumcraft.Research.setSpikey("INFUSION", true);
mods.thaumcraft.Research.moveResearch("ARCANELAMP", "ARTIFICE", 0, 2);
mods.thaumcraft.Research.moveResearch("LAMPGROWTH", "ARTIFICE", 1, 2);
mods.thaumcraft.Research.moveResearch("LAMPFERTILITY", "ARTIFICE", -1, 2);
mods.thaumcraft.Research.moveResearch("ELEMENTALPICK", "ARTIFICE", -2, 6);
mods.thaumcraft.Research.moveResearch("ELEMENTALAXE", "ARTIFICE", -1, 6);
mods.thaumcraft.Research.moveResearch("ELEMENTALHOE", "ARTIFICE", 0, 6);
mods.thaumcraft.Research.moveResearch("ELEMENTALSHOVEL", "ARTIFICE", 1, 6);
mods.thaumcraft.Research.moveResearch("ELEMENTALSWORD", "ARTIFICE", 2, 6);
mods.thaumcraft.Research.moveResearch("BONEBOW", "ARTIFICE", 3, 6);
mods.thaumcraft.Research.moveResearch("PRIMALARROW", "ARTIFICE", 3, 5);
mods.thaumcraft.Research.moveResearch("BANNERS", "ARTIFICE", 4, 3);
mods.thaumcraft.Research.moveResearch("ARCANEBORE", "ARTIFICE", -4, 3);
mods.thaumcraft.Research.moveResearch("MIRROR", "ARTIFICE", -4, 4);
mods.thaumcraft.Research.moveResearch("MIRRORESSENTIA", "ARTIFICE", -5, 4);
mods.thaumcraft.Research.moveResearch("MIRRORHAND", "ARTIFICE", -4, 5);
mods.thaumcraft.Research.moveResearch("JARBRAIN", "ARTIFICE", -4, 2);
mods.thaumcraft.Research.moveResearch("INFUSIONENCHANTMENT", "ARTIFICE", -4, 1);
mods.thaumcraft.Research.moveResearch("ARMORFORTRESS", "ARTIFICE", -4, 0);
mods.thaumcraft.Research.moveResearch("HELMGOGGLES", "ARTIFICE", -4, -1);
mods.thaumcraft.Research.moveResearch("MASKGRINNINGDEVIL", "ARTIFICE", -5, 1);
mods.thaumcraft.Research.moveResearch("MASKANGRYGHOST", "ARTIFICE", -5, 0);
mods.thaumcraft.Research.moveResearch("MASKSIPPINGFIEND", "ARTIFICE", -5, -1);

# GOLEMANCY
# Start
mods.thaumcraft.Research.moveResearch("HUNGRYCHEST", "GOLEMANCY", 0, -2);
mods.thaumcraft.Research.moveResearch("GOLEMSTRAW", "GOLEMANCY", 0, 0);

# Cores
mods.thaumcraft.Research.moveResearch("COREGATHER", "GOLEMANCY", -4, 0);
mods.thaumcraft.Research.moveResearch("COREEMPTY", "GOLEMANCY", -4, -1);
mods.thaumcraft.Research.moveResearch("COREFILL", "GOLEMANCY", -5, 0);
mods.thaumcraft.Research.moveResearch("COREGUARD", "GOLEMANCY", -5, 1);
mods.thaumcraft.Research.moveResearch("COREHARVEST", "GOLEMANCY", -3, 1);
mods.thaumcraft.Research.moveResearch("COREBUTCHER", "GOLEMANCY", -4, 1);
mods.thaumcraft.Research.moveResearch("COREFISHING", "GOLEMANCY", -4, 2);
mods.thaumcraft.Research.moveResearch("CORELUMBER", "GOLEMANCY", -3, 2);
mods.thaumcraft.Research.moveResearch("COREUSE", "GOLEMANCY", -3, -1);
mods.thaumcraft.Research.moveResearch("CORESORTING", "GOLEMANCY", -5, -1);
mods.thaumcraft.Research.moveResearch("CORELIQUID", "GOLEMANCY", -6, 0);
mods.thaumcraft.Research.moveResearch("COREALCHEMY", "GOLEMANCY", -6, -1);

# Golem Tree
mods.thaumcraft.Research.moveResearch("GOLEMWOOD", "GOLEMANCY", 0, 2);
mods.thaumcraft.Research.moveResearch("TRAVELTRUNK", "GOLEMANCY", -1, 2);
mods.thaumcraft.Research.moveResearch("GOLEMFLESH", "GOLEMANCY", 1, 2);
mods.thaumcraft.Research.moveResearch("GOLEMCLAY", "GOLEMANCY", 0, 3);
mods.thaumcraft.Research.moveResearch("GOLEMTALLOW", "GOLEMANCY", 1, 3);
mods.thaumcraft.Research.moveResearch("GOLEMSTONE", "GOLEMANCY", 0, 4);
mods.thaumcraft.Research.moveResearch("GOLEMFETTER", "GOLEMANCY", 1, 4);
mods.thaumcraft.Research.moveResearch("GOLEMIRON", "GOLEMANCY", 0, 5);
mods.thaumcraft.Research.moveResearch("GOLEMTHAUMIUM", "GOLEMANCY", 0, 6);

# Upgrade Tree
mods.thaumcraft.Research.moveResearch("GOLEMBELL", "GOLEMANCY", 2, 0);
mods.thaumcraft.Research.moveResearch("UPGRADEORDER", "GOLEMANCY", 3, -3);
mods.thaumcraft.Research.moveResearch("UPGRADEWATER", "GOLEMANCY", 3, -2);
mods.thaumcraft.Research.moveResearch("UPGRADEEARTH", "GOLEMANCY", 3, -1);
mods.thaumcraft.Research.moveResearch("UPGRADEAIR", "GOLEMANCY", 3, 1);
mods.thaumcraft.Research.moveResearch("UPGRADEFIRE", "GOLEMANCY", 3, 2);
mods.thaumcraft.Research.moveResearch("UPGRADEENTROPY", "GOLEMANCY", 3, 3);
mods.thaumcraft.Research.moveResearch("ADVANCEDGOLEM", "GOLEMANCY", 5, 0);

# Golem Accessories
mods.thaumcraft.Research.moveResearch("TINYHAT", "GOLEMANCY", -2, 4);
mods.thaumcraft.Research.moveResearch("TINYGLASSES", "GOLEMANCY", -2, 5);
mods.thaumcraft.Research.moveResearch("TINYBOWTIE", "GOLEMANCY", -2, 6);
mods.thaumcraft.Research.moveResearch("TINYFEZ", "GOLEMANCY", -2, 7);
mods.thaumcraft.Research.moveResearch("TINYDART", "GOLEMANCY", -3, 4);
mods.thaumcraft.Research.moveResearch("TINYVISOR", "GOLEMANCY", -3, 5);
mods.thaumcraft.Research.moveResearch("TINYARMOR", "GOLEMANCY", -3, 6);
mods.thaumcraft.Research.moveResearch("TINYHAMMER", "GOLEMANCY", -3, 7);

# ELDRITCH
# All of it
mods.thaumcraft.Research.moveResearch("ELDRITCHMINOR", "ELDRITCH", 0, 0);
mods.thaumcraft.Research.moveResearch("FOCUSPRIMAL", "ELDRITCH", 2, 0);
mods.thaumcraft.Research.moveResearch("ROD_primal_staff", "ELDRITCH", 3, 0);
mods.thaumcraft.Research.moveResearch("SANITYCHECK", "ELDRITCH", -2, 0);
mods.thaumcraft.Research.moveResearch("VOIDMETAL", "ELDRITCH", 0, -1);
mods.thaumcraft.Research.moveResearch("ESSENTIARESERVOIR", "ELDRITCH", 2, -1);
mods.thaumcraft.Research.moveResearch("CAP_void", "ELDRITCH", -2, -1);
mods.thaumcraft.Research.moveResearch("ARMORVOIDFORTRESS", "ELDRITCH", 0, -2);
mods.thaumcraft.Research.moveResearch("ELDRITCHMAJOR", "ELDRITCH", 0, -3);
mods.thaumcraft.Research.moveResearch("OCULUS", "ELDRITCH", 0, -4);
mods.thaumcraft.Research.moveResearch("ENTEROUTER", "ELDRITCH", 0, -5);
mods.thaumcraft.Research.moveResearch("OUTERREV", "ELDRITCH", 0, -6);
mods.thaumcraft.Research.moveResearch("PRIMPEARL", "ELDRITCH", 0, 2);
mods.thaumcraft.Research.moveResearch("ADVALCHEMYFURNACE", "ELDRITCH", -1, 2);
mods.thaumcraft.Research.moveResearch("PRIMNODE", "ELDRITCH", 1, 2);
mods.thaumcraft.Research.moveResearch("PRIMALCRUSHER", "ELDRITCH", 0, 3);