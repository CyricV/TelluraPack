# Materials
var searedBricks                = <TConstruct:Smeltery:2>;
var searedStone                 = <TConstruct:Smeltery:4>;
var searedCobblestone           = <TConstruct:Smeltery:5>;
var searedPaver                 = <TConstruct:Smeltery:6>;
var searedCrackedBricks         = <TConstruct:Smeltery:7>;
var searedRoad                  = <TConstruct:Smeltery:8>;
var searedFancyBricks           = <TConstruct:Smeltery:9>;
var searedChiseledBricks        = <TConstruct:Smeltery:10>;
var searedCreeperBricks         = <TConstruct:Smeltery:11>;
var seared2Bricks               = <TConstruct:SmelteryNether:2>;
var seared2Stone                = <TConstruct:SmelteryNether:4>;
var seared2Cobblestone          = <TConstruct:SmelteryNether:5>;
var seared2Paver                = <TConstruct:SmelteryNether:6>;
var seared2CrackedBricks        = <TConstruct:SmelteryNether:7>;
var seared2Road                 = <TConstruct:SmelteryNether:8>;
var seared2FancyBricks          = <TConstruct:SmelteryNether:9>;
var seared2ChiseledBricks       = <TConstruct:SmelteryNether:10>;
var seared2CreeperBricks        = <TConstruct:SmelteryNether:11>;
var brownstoneRoad              = <TConstruct:SpeedBlock:1>;
var brownstone                  = <TConstruct:SpeedBlock:2>;
var brownstoneBrick             = <TConstruct:SpeedBlock:3>;
var brownstoneRoad2             = <TConstruct:SpeedBlock:4>;
var brownstoneFancy             = <TConstruct:SpeedBlock:5>;
var brownstoneChiseled          = <TConstruct:SpeedBlock:6>;

# Seared Bricks
mods.chisel.Groups.addGroup("seared_bricks");
mods.chisel.Groups.addVariation("seared_bricks", searedBricks);
mods.chisel.Groups.addVariation("seared_bricks", searedStone);
mods.chisel.Groups.addVariation("seared_bricks", searedCobblestone);
mods.chisel.Groups.addVariation("seared_bricks", searedPaver);
mods.chisel.Groups.addVariation("seared_bricks", searedCrackedBricks);
mods.chisel.Groups.addVariation("seared_bricks", searedRoad);
mods.chisel.Groups.addVariation("seared_bricks", searedFancyBricks);
mods.chisel.Groups.addVariation("seared_bricks", searedChiseledBricks);
mods.chisel.Groups.addVariation("seared_bricks", searedCreeperBricks);

# Seared Bricks 2
mods.chisel.Groups.addGroup("seared_bricks_2");
mods.chisel.Groups.addVariation("seared_bricks_2", seared2Bricks);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2Stone);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2Cobblestone);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2Paver);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2CrackedBricks);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2Road);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2FancyBricks);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2ChiseledBricks);
mods.chisel.Groups.addVariation("seared_bricks_2", seared2CreeperBricks);

# Brownstone
mods.chisel.Groups.addGroup("brownstone");
recipes.remove(brownstoneRoad);
mods.chisel.Groups.addVariation("brownstone", brownstoneRoad);
mods.chisel.Groups.addVariation("brownstone", brownstone);
recipes.remove(brownstoneBrick);
mods.chisel.Groups.addVariation("brownstone", brownstoneBrick);
recipes.remove(brownstoneRoad2);
mods.chisel.Groups.addVariation("brownstone", brownstoneRoad2);
recipes.remove(brownstoneFancy);
mods.chisel.Groups.addVariation("brownstone", brownstoneFancy);
recipes.remove(brownstoneChiseled);
mods.chisel.Groups.addVariation("brownstone", brownstoneChiseled);