# Materials
var basicGear                   = <EnderIO:itemMachinePart:1>;
var stringMC                    = <minecraft:string>;
var fabricBewitched             = <WitchingGadgets:item.WG_Material:5>;
var enderEye                    = <minecraft:ender_eye>;
var primordialPearl             = <Thaumcraft:ItemEldritchObject:3>;
var fabricSpaciousFolds         = <WitchingGadgets:item.WG_Material:3>;
var bucketLiquidDeath           = <Thaumcraft:ItemBucketDeath>;
var fabricEnchanted             = <Thaumcraft:ItemResource:7>;
var fabricManaweave             = <Botania:manaResource:22>;
var fabricWoven                 = <harvestcraft:wovencottonItem>;
var threadThaumium              = <WitchingGadgets:item.WG_Material:2>;
var threadGold                  = <WitchingGadgets:item.WG_Material:1>;
var threadMana                  = <Botania:manaResource:16>;
var wolfHide                    = <WitchingGadgets:item.WG_Material:6>;

# Devices
var spinningWheel               = <WitchingGadgets:WG_WoodenDevice>;
var enderChest                  = <minecraft:ender_chest>;
var visRelay                    = <Thaumcraft:blockMetalDevice:14>;
var primalSieve                 = <exnihilo:sifting_table>;

# Equipment
var canisterRed                 = <TConstruct:heartCanister:2>;
var gemcuttersTools             = <WitchingGadgets:item.WG_Material:8>;
var cuttingGem                  = <WitchingGadgets:item.WG_InfusedGem>;
var crystalCapsule              = <WitchingGadgets:item.WG_CrystalFlask>;
var bagHungry                   = <WitchingGadgets:item.WG_Bag:3>;
var bagEnderlinked              = <WitchingGadgets:item.WG_Bag:2>;
var bagVoidlinked               = <WitchingGadgets:item.WG_Bag:1>;
var primordialGauntlet          = <WitchingGadgets:item.WG_PrimordialGlove>;
var primordialSword             = <WitchingGadgets:item.WG_PrimordialSword>;
var primordialAxe               = <WitchingGadgets:item.WG_PrimordialAxe>;
var primordialHammer            = <WitchingGadgets:item.WG_PrimordialHammer>;
var primordialHelm              = <WitchingGadgets:item.WG_PrimordialHelm>;
var primordialChest             = <WitchingGadgets:item.WG_PrimordialChest>;
var primordialLeggings          = <WitchingGadgets:item.WG_PrimordialLegs>;
var primordialBoots             = <WitchingGadgets:item.WG_PrimordialBoots>;
var cloakPockets                = <WitchingGadgets:item.WG_Cloak:2>;
var cloakWG                     = <WitchingGadgets:item.WG_Cloak>;
var cloakTG                     = <TravellersGear:simpleGear>;
var cloakWolf                   = <WitchingGadgets:item.WG_Cloak:3>;

# Ore Dictionary Items
var oreCotton                   = <ore:cropCotton>;
var oreIngotIron                = <ore:ingotIron>;
var oreSlabWood                 = <ore:slabWood>;
var orePlank                    = <ore:plankWood>;
var oreGoldNug                  = <ore:nuggetGold>;
var oreThaumiumNug              = <ore:nuggetThaumium>;

################################################################
### Removal ####################################################
################################################################
# Travellers Gear Cloak
recipes.remove(cloakTG);

# Gem Cutting
#mods.thaumcraft.Research.orphanResearch("CRYSTALCAPSULE");
mods.thaumcraft.Research.removeResearch("CRYSTALCAPSULE");
mods.thaumcraft.Research.removeResearch("GEMCUTTING");
recipes.remove(crystalCapsule);
mods.thaumcraft.Crucible.removeRecipe(crystalCapsule);

# Bags
mods.thaumcraft.Research.clearPrereqs("ENDERBAG");
mods.thaumcraft.Research.clearPrereqs("VOIDBAG");
mods.thaumcraft.Arcane.removeRecipe(bagHungry);
mods.thaumcraft.Research.removeResearch("HUNGERBAG");
mods.thaumcraft.Arcane.removeRecipe(fabricSpaciousFolds);
mods.thaumcraft.Research.removeResearch("BAGOFTRICKS");

# Primal Stuff
#mods.thaumcraft.Research.orphanResearch("WGFAKEPRIMPEARL");
#mods.thaumcraft.Research.removeResearch("WGFAKEPRIMPEARL");
mods.thaumcraft.Infusion.removeRecipe(primordialGauntlet);
mods.thaumcraft.Research.removeResearch("PRIMORDIALGLOVE");
mods.thaumcraft.Infusion.removeRecipe(primordialPearl);
mods.thaumcraft.Research.removeResearch("EMPOWERPEARL");
mods.thaumcraft.Infusion.removeRecipe(primordialSword);
mods.thaumcraft.Infusion.removeRecipe(primordialAxe);
mods.thaumcraft.Infusion.removeRecipe(primordialHammer);
mods.thaumcraft.Research.removeResearch("PRIMORDIALWEAPONRY");
mods.thaumcraft.Infusion.removeRecipe(primordialHelm);
mods.thaumcraft.Infusion.removeRecipe(primordialChest);
mods.thaumcraft.Infusion.removeRecipe(primordialLeggings);
mods.thaumcraft.Infusion.removeRecipe(primordialBoots);
mods.thaumcraft.Research.removeResearch("PRIMORDIALARMOR");
mods.thaumcraft.Research.removeResearch("PRIMORDIALGEARSET");


################################################################
### STONE TIER #################################################
################################################################

################################################################
### TINKER TIER ################################################
################################################################
# Spinning Wheel
recipes.remove(spinningWheel);
recipes.addShaped(spinningWheel, [
    [null,          orePlank,       orePlank],
    [oreIngotIron,  orePlank,       orePlank],
    [oreSlabWood,   oreSlabWood,    oreSlabWood]
]);
mods.thaumcraft.Research.clearPages("SPINNINGWHEEL");
mods.thaumcraft.Research.addPage("SPINNINGWHEEL", "wg.research_page.SPINNINGWHEEL");
game.setLocalization("en_US", "wg.research_page.SPINNINGWHEEL", "While many great Thaumaturge neglect the practice of spinning and weaving, many of them do that by underestimating its true power. A number of magical artifacts are the product of clothwork, including every thaumaturge's robes.<BR>The wheel can be used to spin cotton into string, or to spin together mana infused material with thaumium and gold. The magical products of the wheel can open the door to more potent clothworks.");
mods.thaumcraft.Research.addCraftingPage("SPINNINGWHEEL", spinningWheel);

recipes.remove(stringMC);
mods.witchinggadgets.SpinningWheel.addRecipe(stringMC, [
    oreCotton
]);
mods.witchinggadgets.SpinningWheel.addRecipe(stringMC * 2, [
    oreCotton,
    oreCotton
]);
mods.witchinggadgets.SpinningWheel.addRecipe(stringMC * 3, [
    oreCotton,
    oreCotton,
    oreCotton
]);
mods.witchinggadgets.SpinningWheel.addRecipe(stringMC * 4, [
    oreCotton,
    oreCotton,
    oreCotton,
    oreCotton
]);
mods.witchinggadgets.SpinningWheel.addRecipe(stringMC * 5, [
    oreCotton,
    oreCotton,
    oreCotton,
    oreCotton,
    oreCotton
]);
mods.witchinggadgets.SpinningWheel.addRecipe(stringMC * 6, [
    oreCotton,
    oreCotton,
    oreCotton,
    oreCotton,
    oreCotton,
    oreCotton
]);


################################################################
### ALCHEMY TIER ###############################################
################################################################
# Infernal Furnace warp reduction
mods.thaumcraft.Warp.removeFromResearch("INFERNALBLASTFURNACE");
mods.thaumcraft.Warp.addToResearch("INFERNALBLASTFURNACE", 2);

# Gold Thread
mods.witchinggadgets.SpinningWheel.removeRecipe(threadGold);
mods.witchinggadgets.SpinningWheel.addRecipe(threadGold * 2, [
    threadMana,
    oreGoldNug
]);

# Thaumium Thread
mods.witchinggadgets.SpinningWheel.removeRecipe(threadThaumium);
mods.witchinggadgets.SpinningWheel.addRecipe(threadThaumium * 2, [
    threadMana,
    oreThaumiumNug
]);

# Cloak of Voluminous Pockets
mods.thaumcraft.Arcane.removeRecipe(cloakPockets);
mods.thaumcraft.Arcane.addShaped(
    "CLOAK_STORAGE",
    cloakPockets,
    "ordo 8, perditio 8, aer 16", [
    [fabricWoven,       cloakWG,            fabricWoven],
    [fabricBewitched,   threadThaumium,     fabricBewitched],
    [fabricWoven,       fabricBewitched,    fabricWoven]
]);
mods.thaumcraft.Research.refreshResearchRecipe("CLOAK_STORAGE");

# Cloak of the Wolf
mods.thaumcraft.Arcane.removeRecipe(cloakWolf);
mods.thaumcraft.Arcane.addShaped(
    "CLOAK_WOLF",
    cloakWolf,
    "ignis 12, perditio 8, terra 16", [
    [wolfHide,      cloakWG,        wolfHide],
    [fabricWoven,   threadThaumium, fabricWoven],
    [fabricWoven,   fabricWoven,    fabricWoven]
]);
mods.thaumcraft.Research.refreshResearchRecipe("CLOAK_WOLF");

# Bewitched Fabric
mods.thaumcraft.Arcane.removeRecipe(fabricBewitched);
mods.thaumcraft.Arcane.addShaped(
    "ADVANCEDROBES",
    fabricBewitched,
    "ordo 4, perditio 4", [
    [threadThaumium,    threadGold, threadThaumium],
    [threadGold,        threadMana, threadGold],
    [threadThaumium,    threadGold, threadThaumium]
]);
mods.thaumcraft.Research.refreshResearchRecipe("ADVANCEDROBES");

################################################################
### INFUSTION TIER #############################################
################################################################
# Backstabbing Enchant warp add
mods.thaumcraft.Warp.addToResearch("ENCH_BACKSTAB", 1);

# Voidlinked Bag
mods.thaumcraft.Infusion.removeRecipe(bagVoidlinked);
mods.thaumcraft.Infusion.addRecipe(
    "ENDERBAG",
    bucketLiquidDeath,
    [visRelay, fabricBewitched, fabricBewitched, fabricBewitched],
    "fames 8, vacuos 8",
    bagVoidlinked,
    2
);
mods.thaumcraft.Research.addPrereq("VOIDBAG", "ADVANCEDROBES", false);
mods.thaumcraft.Research.refreshResearchRecipe("VOIDBAG");

################################################################
### VOID TIER ##################################################
################################################################
# Enderlinked Bag
mods.thaumcraft.Infusion.removeRecipe(bagEnderlinked);
mods.thaumcraft.Infusion.addRecipe(
    "ENDERBAG",
    enderChest,
    [enderEye, fabricBewitched, fabricBewitched, fabricBewitched],
    "alienis 4, praecantatio 4, vacuos 8",
    bagEnderlinked,
    2
);
mods.thaumcraft.Research.addPrereq("ENDERBAG", "WGFAKEELDRITCHMINOR", false);
mods.thaumcraft.Research.addPrereq("ENDERBAG", "ADVANCEDROBES", false);
mods.thaumcraft.Research.refreshResearchRecipe("ENDERBAG");
mods.thaumcraft.Warp.addToResearch("ENDERBAG", 1);



################################################################
### PRIMAL TIER ################################################
################################################################
# Sieve Research
#ResearchKey, TabKey, AspectList, X, Y, Complexity, ItemStack //Make sure that the X and Y coordinates of your research doesnt conflict with other researches
mods.thaumcraft.Research.addResearch("PRIMALSIEVE", "WITCHGADG", "machina 8, ignis 12, aer 12, aqua 12, terra 12, ordo 12, perditio 12", 0, 6, 2, primalSieve);
mods.thaumcraft.Research.setSpikey("PRIMALSIEVE", true);
mods.thaumcraft.Research.addPrereq("PRIMALSIEVE", "WGFAKEPRIMPEARL", false);
game.setLocalization("en_US", "tc.research_name.PRIMALSIEVE", "Primal Sieve");
game.setLocalization("en_US", "tc.research_text.PRIMALSIEVE", "From stardust");
mods.thaumcraft.Warp.addToResearch("PRIMALSIEVE", 4);
mods.thaumcraft.Research.addPage("PRIMALSIEVE", "tellura.research_page.PRIMALSIEVE");
game.setLocalization("en_US", "tellura.research_page.PRIMALSIEVE", "You think you've discovered a way to reverse entropy in a manner similar to that of the great Engines. By passing appropriately primed material over a Primal Pearl encased in a device of your design you may be able to revert the material back to an earlier, more useful form.<BR>You'll be able to prime Soul Sand, Dust, and Gravel. You just need to create a fluid infrastructure for producing Primal Mana.");
mods.thaumcraft.Research.addInfusionPage("PRIMALSIEVE", primalSieve);

################################################################
### RESEARCH CONFIGURING #######################################
################################################################
mods.thaumcraft.Research.moveResearch("WGFAKEELDRITCHMINOR", "WITCHGADG", -2, 4);
mods.thaumcraft.Research.setSpikey("WGFAKEELDRITCHMINOR", false);
mods.thaumcraft.Research.moveResearch("WGFAKEPRIMPEARL", "WITCHGADG", -2, 6);
mods.thaumcraft.Research.setSpikey("WGFAKEPRIMPEARL", false);
mods.thaumcraft.Research.moveResearch("WGPOTIONS", "WITCHGADG", 0, -1);
mods.thaumcraft.Research.moveResearch("SPINNINGWHEEL", "WITCHGADG", 1, -1);
mods.thaumcraft.Research.moveResearch("ADVANCEDROBES", "WITCHGADG", 2, -1);
mods.thaumcraft.Research.moveResearch("WGFAKEENCHFABRIC", "WITCHGADG", 2, -3);
mods.thaumcraft.Research.moveResearch("VOIDBAG", "WITCHGADG", 3, -1);
mods.thaumcraft.Research.moveResearch("ENDERBAG", "WITCHGADG", 2, 4);
mods.thaumcraft.Research.moveResearch("WGFAKEINFERNALFURNACE", "WITCHGADG", 1, 0);
mods.thaumcraft.Research.moveResearch("INFERNALBLASTFURNACE", "WITCHGADG", 1, 2);
mods.thaumcraft.Research.setSpikey("INFERNALBLASTFURNACE", true);
mods.thaumcraft.Research.moveResearch("WGFAKECENTRIFUGE", "WITCHGADG", -8, 4);
mods.thaumcraft.Research.moveResearch("TERRAFORMER", "WITCHGADG", -7, 4);
mods.thaumcraft.Research.moveResearch("TERRAFORMFOCUS_DESERT", "WITCHGADG", -8, 3);
mods.thaumcraft.Research.moveResearch("TERRAFORMFOCUS_JUNGLE", "WITCHGADG", -7, 3);
mods.thaumcraft.Research.moveResearch("TERRAFORMFOCUS_HELL", "WITCHGADG", -5, 3);
mods.thaumcraft.Research.moveResearch("TERRAFORMFOCUS_COLDTAIGA", "WITCHGADG", -8, 5);
mods.thaumcraft.Research.moveResearch("TERRAFORMFOCUS_MUSHROOM", "WITCHGADG", -7, 5);
mods.thaumcraft.Research.moveResearch("TERRAFORMFOCUS_TAINT", "WITCHGADG", -5, 5);
mods.thaumcraft.Research.moveResearch("WGFAKEBATHSALTS", "WITCHGADG", 1, -3);
mods.thaumcraft.Research.moveResearch("SAUNASTOVE", "WITCHGADG", 1, -2);
mods.thaumcraft.Research.moveResearch("WGFAKEMIRRORESSENTIA", "WITCHGADG", 0, -3);
mods.thaumcraft.Research.moveResearch("MIRRORPUMP", "WITCHGADG", 0, -2);
mods.thaumcraft.Research.moveResearch("WGFAKEJARLABEL", "WITCHGADG", 3, -3);
mods.thaumcraft.Research.moveResearch("LABELLIB", "WITCHGADG", 3, -2);
mods.thaumcraft.Research.moveResearch("WGFAKEARCANESTONE", "WITCHGADG", -2, -3);
mods.thaumcraft.Research.moveResearch("AGEINGSTONE", "WITCHGADG", -2, 1);
mods.thaumcraft.Research.moveResearch("STONEEXTRUDER", "WITCHGADG", -2, -4);
mods.thaumcraft.Research.moveResearch("ETHEREALWALL", "WITCHGADG", -3, -2);
mods.thaumcraft.Research.moveResearch("WGFAKEALCHEMICALMANUFACTURE", "WITCHGADG", -1, -3);
mods.thaumcraft.Research.moveResearch("ALCHEMICALTRANSMOGRIFY", "WITCHGADG", -1, -4);
mods.thaumcraft.Research.moveResearch("ROSEVINE", "WITCHGADG", -1, -2);
mods.thaumcraft.Research.moveResearch("WGFAKEPUREIRON", "WITCHGADG", -3, -3);
mods.thaumcraft.Research.moveResearch("METALLURGICPERFECTION_CLUSTERS", "WITCHGADG", -3, -4);
mods.thaumcraft.Research.moveResearch("PURECINNABAR", "WITCHGADG", -4, -4);
mods.thaumcraft.Research.moveResearch("WGBAUBLES", "WITCHGADG", 3, -4);
mods.thaumcraft.Research.moveResearch("CLOAKKAMA", "WITCHGADG", 4, -4);
mods.thaumcraft.Research.moveResearch("CLOAK", "WITCHGADG", 4, -3);
mods.thaumcraft.Research.moveResearch("CLOAK_WOLF", "WITCHGADG", 5, -3);
mods.thaumcraft.Research.moveResearch("CLOAK_STORAGE", "WITCHGADG", 5, -2);
mods.thaumcraft.Research.moveResearch("CLOAK_SPECTRAL", "WITCHGADG", 4, -2);
mods.thaumcraft.Research.moveResearch("WGFAKEINFUSIONENCHANTMENT", "WITCHGADG", -4, -3);
mods.thaumcraft.Research.moveResearch("ENCH_RIDEPROTECT", "WITCHGADG", -5, -4);
mods.thaumcraft.Research.moveResearch("ENCH_INVISIBLEGEAR", "WITCHGADG", -5, -3);
mods.thaumcraft.Research.moveResearch("ENCH_UNVEILING", "WITCHGADG", -5, -2);
mods.thaumcraft.Research.moveResearch("ENCH_STEALTH", "WITCHGADG", -4, -2);
mods.thaumcraft.Research.moveResearch("ENCH_BACKSTAB", "WITCHGADG", -4, 2);
mods.thaumcraft.Research.moveResearch("SCANCAMERA", "WITCHGADG", 2, -4);
mods.thaumcraft.Research.moveResearch("CALCULATOR", "WITCHGADG", 1, -4);
mods.thaumcraft.Research.moveResearch("LABYRINTHSTRING", "WITCHGADG", 0, -4);