# Item Names
var beeswax                     = <harvestcraft:beeswaxItem>;
var smelteryController          = <TConstruct:Smeltery>;
var smelteryDrain               = <TConstruct:Smeltery:1>;
var searedBricks                = <TConstruct:Smeltery:2>;
var searedStone                 = <TConstruct:Smeltery:4>;
var searedCobble                = <TConstruct:Smeltery:5>;
var searedPaver                 = <TConstruct:Smeltery:6>;
var searedCrackedBricks         = <TConstruct:Smeltery:7>;
var searedRoad                  = <TConstruct:Smeltery:8>;
var searedFancyBricks           = <TConstruct:Smeltery:9>;
var searedChisledBricks         = <TConstruct:Smeltery:10>;
var searedChislerBricks         = <TConstruct:Smeltery:11>;
var certusQuartz                = <appliedenergistics2:item.ItemMultiMaterial>;
var certusQuartzDust            = <appliedenergistics2:item.ItemMultiMaterial:2>;
var netherQuartzDust            = <appliedenergistics2:item.ItemMultiMaterial:3>;
var fluixCrystal                = <appliedenergistics2:item.ItemMultiMaterial:7>;
var pureCertusQuartz            = <appliedenergistics2:item.ItemMultiMaterial:10>;
var pureNetherQuartz            = <appliedenergistics2:item.ItemMultiMaterial:11>;
var pureFluixCrystal            = <appliedenergistics2:item.ItemMultiMaterial:12>;
var netherQuartz                = <minecraft:quartz>;

# Ore Dictionary Names
var slimeball                   = <ore:slimeball>;
var searedBlock                 = <ore:searedBlock>;
var allRawMeat                  = <ore:listAllmeatraw>;
var allRawMutton                = <ore:listAllmuttonraw>;
var allRawFish                  = <ore:listAllfishraw>;
var allRawCalamari              = <ore:foodCalamariraw>;
var allCookedMeat               = <ore:listAllmeatcooked>;
var allCookedMutton             = <ore:listAllmuttoncooked>;
var allCookedFish               = <ore:listAllfishcooked>;
var allCookedCalamari           = <ore:foodCalamaricooked>;
var pureQuartzCrystal           = <ore:pureQuartzCrystal>;
var quartzDust                  = <ore:quartzDust>;
var anyQuartz                   = <ore:anyQuartz>;
var anyFluixCrystal             = <ore:anyFluixCrystal>;
var anyPetal                    = <ore:anyPetal>;
var allStickyStuff              = <ore:allStickyStuff>;

# Add beeswax as slimeball
slimeball.add(beeswax);

# Create anyQuartz
anyQuartz.add(netherQuartz);
anyQuartz.add(certusQuartz);
anyQuartz.add(pureCertusQuartz);
anyQuartz.add(pureNetherQuartz);

# Create anyFluixCrystal
anyFluixCrystal.add(fluixCrystal);
anyFluixCrystal.add(pureFluixCrystal);

# Create searedBlocks
searedBlock.add(smelteryController);
searedBlock.add(smelteryDrain);
searedBlock.add(searedBricks);
searedBlock.add(searedStone);
searedBlock.add(searedCobble);
searedBlock.add(searedPaver);
searedBlock.add(searedCrackedBricks);
searedBlock.add(searedRoad);
searedBlock.add(searedFancyBricks);
searedBlock.add(searedChisledBricks);
searedBlock.add(searedChislerBricks);

# Create quartzDust
quartzDust.add(certusQuartzDust);
quartzDust.add(netherQuartzDust);

# Create pureQuartzCrystal
pureQuartzCrystal.add(pureCertusQuartz);
pureQuartzCrystal.add(pureNetherQuartz);

# Create anyPetal
anyPetal.add(<Botania:petal>);
anyPetal.add(<Botania:petal:1>);
anyPetal.add(<Botania:petal:2>);
anyPetal.add(<Botania:petal:3>);
anyPetal.add(<Botania:petal:4>);
anyPetal.add(<Botania:petal:5>);
anyPetal.add(<Botania:petal:6>);
anyPetal.add(<Botania:petal:7>);
anyPetal.add(<Botania:petal:8>);
anyPetal.add(<Botania:petal:9>);
anyPetal.add(<Botania:petal:10>);
anyPetal.add(<Botania:petal:11>);
anyPetal.add(<Botania:petal:12>);
anyPetal.add(<Botania:petal:13>);
anyPetal.add(<Botania:petal:14>);
anyPetal.add(<Botania:petal:15>);

# Create allStickyStuff
allStickyStuff.add(<MineFactoryReloaded:rubber.raw>);
allStickyStuff.add(<TConstruct:materials:36>);
allStickyStuff.add(<minecraft:slime_ball>);
allStickyStuff.add(<MineFactoryReloaded:pinkslime>);
allStickyStuff.add(<TConstruct:strangeFood>);
allStickyStuff.add(<TConstruct:strangeFood:1>);
allStickyStuff.add(<TConstruct:materials:36>);
allStickyStuff.add(<harvestcraft:beeswaxItem>);