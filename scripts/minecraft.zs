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
var ironIngot                   = <minecraft:iron_ingot>;
var leather                     = <minecraft:leather>;
var paper                       = <minecraft:paper>;
var sugarCane                   = <minecraft:reeds>;
var rottenFlesh                 = <minecraft:rotten_flesh>;
var waterBucket                 = <minecraft:water_bucket>;
var sawdust                     = <ThermalExpansion:material:512>;
var netherrack                  = <minecraft:netherrack>;
var netherBrickBlock            = <minecraft:nether_brick>;
var netherBrickStairs           = <minecraft:nether_brick_stairs>;
var netherBrickFence            = <minecraft:nether_brick_fence>;
var netherBrickSlab             = <minecraft:stone_slab:6>;
var netherBrick                 = <minecraft:netherbrick>;
var stonePlate                  = <TConstruct:heavyPlate:1>;
var woodenPlate                 = <TConstruct:heavyPlate>;
var electrumPlate               = <TConstruct:heavyPlate:1025>;
var ironPlate                   = <TConstruct:heavyPlate:2>;
var ironToughBinding            = <TConstruct:toughBinding:2>;

# Devices
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;
var stonePressurePlate          = <minecraft:stone_pressure_plate>;
var woodenPressurePlate         = <minecraft:wooden_pressure_plate>;
var goldenPressurePlate         = <minecraft:light_weighted_pressure_plate>;
var ironPressurePlate           = <minecraft:heavy_weighted_pressure_plate>;

# Equipment
var leatherHelm                 = <minecraft:leather_helmet>;
var leatherChest                = <minecraft:leather_chestplate>;
var leatherLeggings             = <minecraft:leather_leggings>;
var leatherBoots                = <minecraft:leather_boots>;
var hLeatherHelm                = <harvestcraft:hardenedleatherhelmItem>;
var hLeatherChest               = <harvestcraft:hardenedleatherchestItem>;
var hLeatherLeggings            = <harvestcraft:hardenedleatherleggingsItem>;
var hLeatherBoots               = <harvestcraft:hardenedleatherbootsItem>;
var ironHelm                    = <minecraft:iron_helmet>;
var ironChest                   = <minecraft:iron_chestplate>;
var ironLeggings                = <minecraft:iron_leggings>;
var ironBoots                   = <minecraft:iron_boots>;
var diamondHelm                 = <minecraft:diamond_helmet>;
var diamondChest                = <minecraft:diamond_chestplate>;
var diamondLeggings             = <minecraft:diamond_leggings>;
var diamondBoots                = <minecraft:diamond_boots>;
var invarHelm                   = <ThermalFoundation:armor.helmetInvar>;
var invarChest                  = <ThermalFoundation:armor.plateInvar>;
var invarLeggings               = <ThermalFoundation:armor.legsInvar>;
var invarBoots                  = <ThermalFoundation:armor.bootsInvar>;


# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;
var redstoneDust                = <ore:dustRedstone>;
var oreHardenedLeather          = <ore:materialHardenedleather>;
var oreLeather                  = <ore:itemLeather>;
var oreRubber                   = <ore:itemRubber>;
# Power Recipe Fluid Transposer Fix
#var accioMaterial               = <ore:accioMaterial>;
#accioMaterial.remove(fireEssence);
#accioMaterial.remove(waterEssence);
#accioMaterial.remove(airEssence);
#accioMaterial.remove(earthEssence);

################################################################
### Removal ####################################################
################################################################
# Diamond Armonr
recipes.remove(diamondHelm);
recipes.remove(diamondChest);
recipes.remove(diamondLeggings);
recipes.remove(diamondBoots);
recipes.remove(ironHelm);
recipes.remove(ironChest);
recipes.remove(ironLeggings);
recipes.remove(ironBoots);

################################################################
### STONE TIER #################################################
################################################################
# Bedrock
bedrock.displayName = "\u00A70\u00A7kAmalgam";

# Leather
recipes.remove(leather);
mods.botania.ManaInfusion.removeRecipe(leather);
mods.tconstruct.Drying.addRecipe(rottenFlesh, leather, 6000);

# Leather Boots
recipes.remove(leatherBoots);
recipes.addShaped(leatherBoots, [
    [oreLeather,    null,   oreLeather],
    [oreLeather,    null,   oreLeather],
    [oreRubber,     null,   oreRubber]
]);

# Hardened Leather Helm
recipes.remove(hLeatherHelm);
recipes.addShaped(hLeatherHelm, [
    [oreLeather,            oreLeather,                             oreLeather],
    [oreHardenedLeather,    leatherHelm.anyDamage().marked("inp"),  oreHardenedLeather],
    [null,                  null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Hardened Leather Chest
recipes.remove(hLeatherChest);
recipes.addShaped(hLeatherChest, [
    [oreLeather,            null,                                   oreLeather],
    [oreHardenedLeather,    leatherChest.anyDamage().marked("inp"), oreHardenedLeather],
    [oreHardenedLeather,    oreHardenedLeather,                     oreHardenedLeather]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Hardened Leather Leggings
recipes.remove(hLeatherLeggings);
recipes.addShaped(hLeatherLeggings, [
    [oreHardenedLeather,    leatherLeggings.anyDamage().marked("inp"),  oreHardenedLeather],
    [oreHardenedLeather,    null,                                       oreHardenedLeather],
    [oreLeather,            null,                                       oreLeather]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Hardened Leather Boots
recipes.remove(hLeatherBoots);
recipes.addShaped(hLeatherBoots, [
    [oreHardenedLeather,    leatherBoots.anyDamage().marked("inp"), oreHardenedLeather],
    [null,                  null,                                   null],
    [null,                  null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Iron Helm
invarHelm.displayName = "Iron Plate Helm";
recipes.remove(invarHelm);
recipes.addShaped(invarHelm, [
    [oreLeather,    ironIngot,                              oreLeather],
    [ironIngot,     hLeatherHelm.anyDamage().marked("inp"), ironIngot],
    [null,          null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Iron Boots
invarBoots.displayName = "Iron Plate Boots";
recipes.remove(invarBoots);
recipes.addShaped(invarBoots, [
    [ironIngot, hLeatherBoots.anyDamage().marked("inp"),    ironIngot],
    [null,      null,                                       null],
    [null,      null,                                       null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

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
# Stone Pressure Plate
recipes.remove(stonePressurePlate);
recipes.addShapeless(stonePressurePlate, [stonePlate, redstoneDust]);
# Wooden Pressure Plate
recipes.remove(woodenPressurePlate);
recipes.addShapeless(woodenPressurePlate, [woodenPlate, redstoneDust]);
# Gold Pressure Plate
recipes.remove(goldenPressurePlate);
recipes.addShapeless(goldenPressurePlate, [electrumPlate, redstoneDust]);
mods.tconstruct.Smeltery.removeMelting(goldenPressurePlate);
mods.tconstruct.Smeltery.addMelting(goldenPressurePlate, <liquid:electrum.molten> * 1152, 400, goldenPressurePlate);
# Iron Pressure Plate
recipes.remove(ironPressurePlate);
recipes.addShapeless(ironPressurePlate, [ironPlate, redstoneDust]);
mods.tconstruct.Smeltery.removeMelting(ironPressurePlate);
mods.tconstruct.Smeltery.addMelting(ironPressurePlate, <liquid:iron.molten> * 1152, 600, ironPressurePlate);

# Iron Chest
invarChest.displayName = "Iron Plate Cuirass";
recipes.remove(invarChest);
recipes.addShaped(invarChest, [
    [oreHardenedLeather,    null,                                       oreHardenedLeather],
    [ironIngot,             hLeatherChest.anyDamage().marked("inp"),    ironIngot],
    [ironIngot,             ironPlate,                                  ironIngot]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

# Iron Leggings
invarLeggings.displayName = "Iron Plate Leggings";
recipes.remove(invarLeggings);
recipes.addShaped(invarLeggings, [
    [ironToughBinding,  hLeatherLeggings.anyDamage().marked("inp"), ironToughBinding],
    [ironIngot,         null,                                       ironIngot],
    [ironIngot,         null,                                       ironIngot]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);

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
# Nether Materials Modification
netherrack.displayName = "Nether Scrap";
mods.thermalexpansion.Crucible.addRecipe(1000, netherrack, <liquid:iron.molten> * 16);
netherBrickBlock.displayName = "Nether Plate Block";
netherBrickStairs.displayName = "Nether Plate Stairs";
netherBrickFence.displayName = "Nether Plate Fence";
netherBrickSlab.displayName = "Nether Plate Slab";
netherBrick.displayName = "Nether Plate";

################################################################
### VOID TIER ##################################################
################################################################