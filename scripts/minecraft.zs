# Materials
var fireEssence                 = <magicalcrops:magicalcrops_FireEssence>;
var waterEssence                = <magicalcrops:magicalcrops_WaterEssence>;
var airEssence                  = <magicalcrops:magicalcrops_AirEssence>;
var earthEssence                = <magicalcrops:magicalcrops_EarthEssence>;
var bedrock                     = <minecraft:bedrock>;
var blazePowder                 = <minecraft:blaze_powder>;
var book                        = <minecraft:book>;
var bucket                      = <minecraft:bucket>;
var cobble                      = <minecraft:cobblestone>;
var bonemeal                    = <minecraft:dye:15>;
var glowstoneDust               = <minecraft:glowstone_dust>;
var ironIngot                   = <minecraft:iron_ingot>;
var leather                     = <minecraft:leather>;
var paper                       = <minecraft:paper>;
var sugarCane                   = <minecraft:reeds>;
var rottenFlesh                 = <minecraft:rotten_flesh>;
var waterBucket                 = <minecraft:water_bucket>;
var netherrack                  = <minecraft:netherrack>;
var netherBrickBlock            = <minecraft:nether_brick>;
var netherBrickStairs           = <minecraft:nether_brick_stairs>;
var netherBrickFence            = <minecraft:nether_brick_fence>;
var netherBrickSlab             = <minecraft:stone_slab:6>;
var netherBrick                 = <minecraft:netherbrick>;
var heavyPlateStone             = <TConstruct:heavyPlate:1>;
var heavyPlateWood              = <TConstruct:heavyPlate>;
var electrumPlate               = <TConstruct:heavyPlate:1025>;
var ironPlate                   = <TConstruct:heavyPlate:2>;
var ironToughBinding            = <TConstruct:toughBinding:2>;
var sawdust                     = <ThermalExpansion:material:512>;
var ironGear                    = <ThermalFoundation:material:12>;
var appleGolden                 = <minecraft:golden_apple>;
var appleNotch                  = <minecraft:golden_apple:1>;
var sugar                       = <minecraft:sugar>;
var bread                       = <minecraft:bread>;
var flourAE                     = <appliedenergistics2:item.ItemMultiMaterial:4>;
var flourEnderIO                = <EnderIO:itemPowderIngot:8>;

# Devices
var furnaceMC                   = <minecraft:furnace>;
var hopper                      = <minecraft:hopper>;
var chest                       = <minecraft:chest>;
var stonePressurePlate          = <minecraft:stone_pressure_plate>;
var woodenPressurePlate         = <minecraft:wooden_pressure_plate>;
var goldenPressurePlate         = <minecraft:light_weighted_pressure_plate>;
var ironPressurePlate           = <minecraft:heavy_weighted_pressure_plate>;
var lever                       = <minecraft:lever>;
var buttonStone                 = <minecraft:stone_button>;
var buttonWood                  = <minecraft:wooden_button>;
var doorTrap                    = <minecraft:trapdoor>;
var doorWood                    = <minecraft:wooden_door>;
var doorIron                    = <minecraft:iron_door>;

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
var woodenSword                 = <minecraft:wooden_sword>;
var woodenShovel                = <minecraft:wooden_shovel>;
var woodenPickaxe               = <minecraft:wooden_pickaxe>;
var woodenAxe                   = <minecraft:wooden_axe>;
var woodenHoe                   = <minecraft:wooden_hoe>;
var stoneSword                  = <minecraft:stone_sword>;
var stoneShovel                 = <minecraft:stone_shovel>;
var stonePickaxe                = <minecraft:stone_pickaxe>;
var stoneAxe                    = <minecraft:stone_axe>;
var stoneHoe                    = <minecraft:stone_hoe>;
var ironSword                   = <minecraft:iron_sword>;
var ironShovel                  = <minecraft:iron_shovel>;
var ironPickaxe                 = <minecraft:iron_pickaxe>;
var ironAxe                     = <minecraft:iron_axe>;
var ironHoe                     = <minecraft:iron_hoe>;
var goldSword                   = <minecraft:golden_sword>;
var goldShovel                  = <minecraft:golden_shovel>;
var goldPickaxe                 = <minecraft:golden_pickaxe>;
var goldAxe                     = <minecraft:golden_axe>;
var goldHoe                     = <minecraft:golden_hoe>;
var diamondSword                = <minecraft:diamond_sword>;
var diamondShovel               = <minecraft:diamond_shovel>;
var diamondPickaxe              = <minecraft:diamond_pickaxe>;
var diamondAxe                  = <minecraft:diamond_axe>;
var diamondHoe                  = <minecraft:diamond_hoe>;


# Ore Dictionary Items
var allIronNugs                 = <ore:nuggetIron>;
var allGoldNugs                 = <ore:nuggetGold>;
var redstoneDust                = <ore:dustRedstone>;
var oreHardenedLeather          = <ore:materialHardenedleather>;
var oreLeather                  = <ore:itemLeather>;
var oreRubber                   = <ore:itemRubber>;
var oreStick                    = <ore:stickWood>;
var orePlank                    = <ore:plankWood>;
var oreStone                    = <ore:stone>;
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

# Wooden Tools
recipes.remove(woodenSword);
recipes.remove(woodenShovel);
recipes.remove(woodenPickaxe);
#recipes.remove(woodenAxe);

# Stone Tools
recipes.remove(stoneSword);
recipes.remove(stoneShovel);
recipes.remove(stonePickaxe);
recipes.remove(stoneAxe);
recipes.remove(stoneHoe);

# Iron Tools
recipes.remove(ironSword);
recipes.remove(ironShovel);
recipes.remove(ironPickaxe);
recipes.remove(ironAxe);
recipes.remove(ironHoe);

# Gold Tools
recipes.remove(goldSword);
recipes.remove(goldShovel);
recipes.remove(goldPickaxe);
recipes.remove(goldAxe);
recipes.remove(goldHoe);

# Diamond Tools
recipes.remove(diamondSword);
recipes.remove(diamondShovel);
recipes.remove(diamondPickaxe);
recipes.remove(diamondAxe);
recipes.remove(diamondHoe);

# Golden Apples
recipes.remove(appleGolden);
recipes.remove(appleNotch);

# Sugar
recipes.remove(sugar);

# Bread
recipes.remove(bread);
furnace.remove(<*>, flourAE);
furnace.remove(<*>, flourEnderIO);
#mods.thermalexpansion.Furnace.removeRecipe(flourAE);
#mods.thermalexpansion.Furnace.removeRecipe(flourEnderIO);

################################################################
### STONE TIER #################################################
################################################################
# Bedrock
bedrock.displayName = "\u00A70\u00A7kAmalgam";

# Furnace
recipes.remove(furnaceMC);
recipes.addShaped(furnaceMC, [
    [cobble,    cobble,             cobble],
    [cobble,    heavyPlateStone,    cobble],
    [cobble,    cobble,             cobble]
]);

# Leather
leather.displayName = "Hide";
recipes.remove(leather);
mods.botania.ManaInfusion.removeRecipe(leather);
mods.tconstruct.Drying.addRecipe(rottenFlesh, leather, 6000);

# Leather Helm
leatherHelm.displayName = "Rawhide Cap";
recipes.addShapeless(leatherHelm, [leatherHelm.anyDamage().marked("inp"), oreLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

# Leather Chest
leatherChest.displayName = "Rawhide Chestguard";
recipes.addShapeless(leatherChest, [leatherChest.anyDamage().marked("inp"), oreLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

# Leather Leggings
leatherLeggings.displayName = "Rawhide Pants";
recipes.addShapeless(leatherLeggings, [leatherLeggings.anyDamage().marked("inp"), oreLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

# Leather Boots
leatherBoots.displayName = "Rawhide Shoes";
recipes.remove(leatherBoots);
recipes.addShaped(leatherBoots, [
    [oreLeather,    null,   oreLeather],
    [oreLeather,    null,   oreLeather],
    [null,          null,   null]
]);
recipes.addShapeless(leatherBoots, [leatherBoots.anyDamage().marked("inp"), oreLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

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
recipes.addShapeless(hLeatherHelm, [hLeatherHelm.anyDamage().marked("inp"), oreHardenedLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
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
recipes.addShapeless(hLeatherChest, [hLeatherChest.anyDamage().marked("inp"), oreHardenedLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
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
recipes.addShapeless(hLeatherLeggings, [hLeatherLeggings.anyDamage().marked("inp"), oreHardenedLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

# Hardened Leather Boots
recipes.remove(hLeatherBoots);
recipes.addShaped(hLeatherBoots, [
    [oreHardenedLeather,    leatherBoots.anyDamage().marked("inp"), oreHardenedLeather],
    [oreRubber,             null,                                   oreRubber],
    [null,                  null,                                   null]],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage));
    }
);
recipes.addShapeless(hLeatherBoots, [hLeatherBoots.anyDamage().marked("inp"), oreHardenedLeather],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
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
    [allIronNugs,   null,       allIronNugs],
    [allIronNugs,   chest,      allIronNugs],
    [null,          ironGear,   null]
]);


################################################################
### TINKER TIER ################################################
################################################################
# Stone Pressure Plate
recipes.remove(stonePressurePlate);
recipes.addShapeless(stonePressurePlate * 4, [heavyPlateStone, redstoneDust]);
# Wooden Pressure Plate
recipes.remove(woodenPressurePlate);
recipes.addShapeless(woodenPressurePlate * 4, [heavyPlateWood, redstoneDust]);
# Gold Pressure Plate
recipes.remove(goldenPressurePlate);
recipes.addShapeless(goldenPressurePlate * 4, [electrumPlate, redstoneDust]);
mods.tconstruct.Smeltery.removeMelting(goldenPressurePlate);
mods.tconstruct.Smeltery.addMelting(goldenPressurePlate, <liquid:electrum.molten> * 1152, 400, goldenPressurePlate);
# Iron Pressure Plate
recipes.remove(ironPressurePlate);
recipes.addShapeless(ironPressurePlate * 4, [ironPlate, redstoneDust]);
mods.tconstruct.Smeltery.removeMelting(ironPressurePlate);
mods.tconstruct.Smeltery.addMelting(ironPressurePlate, <liquid:iron.molten> * 1152, 600, ironPressurePlate);
# Lever
recipes.remove(lever);
recipes.addShapeless(lever * 2, [oreStick, redstoneDust, cobble]);
# Wood Button
recipes.remove(buttonWood);
recipes.addShapeless(buttonWood * 4, [orePlank, redstoneDust]);
# Stone Button
recipes.remove(buttonStone);
recipes.addShapeless(buttonStone * 4, [oreStone, redstoneDust]);
# Wooden Door
recipes.remove(doorWood);
recipes.addShaped(doorWood, [
    [orePlank,  orePlank,   allIronNugs],
    [orePlank,  orePlank,   redstoneDust],
    [orePlank,  orePlank,   allIronNugs]
]);
# Trap Door
recipes.remove(doorTrap);
recipes.addShaped(doorTrap * 2, [
    [allIronNugs,   redstoneDust,   allIronNugs],
    [orePlank,      orePlank,       orePlank],
    [orePlank,      orePlank,       orePlank]
]);
# Iron Door
recipes.remove(doorIron);
recipes.addShaped(doorIron, [
    [ironIngot, orePlank,   ironIngot],
    [ironIngot, doorWood,   ironIngot],
    [ironIngot, orePlank,   ironIngot]
]);


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
recipes.addShapeless(invarHelm, [invarHelm.anyDamage().marked("inp"), ironIngot],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

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
recipes.addShapeless(invarChest, [invarChest.anyDamage().marked("inp"), ironIngot],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
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
recipes.addShapeless(invarLeggings, [invarLeggings.anyDamage().marked("inp"), ironIngot],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
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
recipes.addShapeless(invarBoots, [invarBoots.anyDamage().marked("inp"), ironIngot],
    function(output, inputs, crafting) {
        return output.withDamage(max(0, inputs.inp.damage - 50));
    }
);

# Bone Meal
mods.tconstruct.Casting.addTableRecipe(bonemeal, <liquid:sewage> * 100, sawdust , true, 10);
mods.thermalexpansion.Transposer.addFillRecipe(100, sawdust, bonemeal, <liquid:sewage> * 100);

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