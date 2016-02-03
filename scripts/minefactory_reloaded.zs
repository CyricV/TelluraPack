import mods.mfr.MiningLaser;
# Laser ores:
#     (175): <minecraft:coal_ore> (Coal Ore)
#     (150): <minecraft:iron_ore> (Iron Ore)
#     (100): <minecraft:redstone_ore> (Redstone Ore)
#     (90): <ThermalFoundation:Ore> (Copper Ore)
#     (85): <ThermalFoundation:Ore:1> (Tin Ore)
#     (80): <minecraft:glowstone> (Glowstone)
#     (80): <minecraft:lapis_ore> (Lapis Lazuli Ore)
#     (70): <minecraft:gold_ore> (Gold Ore)
#     (70): <minecraft:quartz_ore> (Nether Quartz Ore)
#     (60): <ThermalFoundation:Ore:3> (Lead Ore)
#     (60): <TConstruct:SearedBrick:5> (Aluminum Ore)
#     (55): <ThermalFoundation:Ore:6> (Mana Infused Ore)
#     (55): <minecraft:diamond_ore> (Diamond Ore)
#     (50): <appliedenergistics2:tile.OreQuartz> (Certus Quartz Ore)
#     (40): <ThermalFoundation:Ore:4> (Ferrous Ore)
#     (35): <minecraft:emerald_ore> (Emerald Ore)
#     (35): <Thaumcraft:blockCustomOre:7> (Amber Bearing Stone)
#     (30): <ThermalFoundation:Ore:2> (Silver Ore)
#     (15): <Thaumcraft:blockCustomOre> (Cinnabar Ore)
#     (15): <ThermalFoundation:Ore:5> (Shiny Ore)
#     (10): <TConstruct:SearedBrick:2> (Ardite Ore)
#     (10): <TConstruct:SearedBrick:1> (Cobalt Ore)
# Laser affinity 0 (White):
#     <minecraft:quartz_ore> (Nether Quartz Ore)
#     <TConstruct:SearedBrick:5> (Aluminum Ore)
# Laser affinity 1 (Orange):
#     <ThermalFoundation:Ore> (Copper Ore)
#     <Thaumcraft:blockCustomOre:7> (Amber Bearing Stone)
#     <TConstruct:SearedBrick:2> (Ardite Ore)
# Laser affinity 3 (Light Blue):
#     <minecraft:diamond_ore> (Diamond Ore)
#     <ThermalFoundation:Ore:5> (Shiny Ore)
# Laser affinity 4 (Yellow):
#     <minecraft:glowstone> (Glowstone)
#     <minecraft:gold_ore> (Gold Ore)
# Laser affinity 5 (Lime):
#     <minecraft:emerald_ore> (Emerald Ore)
# Laser affinity 7 (Gray):
#     <ThermalFoundation:Ore:2> (Silver Ore)
# Laser affinity 8 (Light Gray):
#     <ThermalFoundation:Ore:1> (Tin Ore)
#     <ThermalFoundation:Ore:4> (Ferrous Ore)
# Laser affinity 9 (Cyan):
#     <appliedenergistics2:tile.OreQuartz> (Certus Quartz Ore)
# Laser affinity 10 (Purple):
#     <ThermalFoundation:Ore:3> (Lead Ore)
# Laser affinity 11 (Blue):
#     <minecraft:lapis_ore> (Lapis Lazuli Ore)
#     <ThermalFoundation:Ore:6> (Mana Infused Ore)
#     <TConstruct:SearedBrick:1> (Cobalt Ore)
# Laser affinity 12 (Brown):
#     <minecraft:iron_ore> (Iron Ore)
# Laser affinity 14 (Red):
#     <minecraft:redstone_ore> (Redstone Ore)
#     <Thaumcraft:blockCustomOre> (Cinnabar Ore)
# Laser affinity 15 (Black):
#     <minecraft:coal_ore> (Coal Ore)

# MiningLaser.addOre(<tile.stone>.weight(1000)); # Let's be an asshole and make it generate stone most of the time
# MiningLaser.addOre((<tile.stone> * 2).withTag({Display: {Name: "Funny Stone"}}).weight(1000)); # works with stack sizes and tags
# MiningLaser.removeOre(<tile.oreIron>); # can use ore dictionary entries, too (will remove all matching items)
# 
# MiningLaser.addPreferredOre(1, <tile.oreIron>); # color codes are the same as the wool meta values
# MiningLaser.removePreferredOre(1, <tile.oreIron>);

var weatherCrystal = <EnderIO:itemMaterial:10>;

# MiningLaser.addOre(weatherCrystal.weight(1000));