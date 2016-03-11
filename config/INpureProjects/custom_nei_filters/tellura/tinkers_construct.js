if (FML.isModLoaded("IguanaTweaksTConstruct")){
    // NEI.hide("IguanaTweaksTConstruct:sawArdite");
    // NEI.hide("IguanaTweaksTConstruct:sawCobalt");
    // NEI.hide("IguanaTweaksTConstruct:sawManyullyn");
}

if (FML.isModLoaded("TConstruct")){
    NEI.hide("TConstruct:HeldItemBlock");
    NEI.hide("TConstruct:BattleSignBlock");
    NEI.hide("TConstruct:Shuriken");
    NEI.hide("TConstruct:ShurikenPart");
    NEI.hide("TConstruct:goldHead");
    NEI.override("TConstruct:strangeFood", [0,1]);
    NEI.hide("TConstruct:diamondApple");
    NEI.override("TConstruct:heartCanister", [1,2,3,4,6]);
    NEI.hide("TConstruct:helmetWood");
    NEI.hide("TConstruct:chestplateWood");
    NEI.hide("TConstruct:leggingsWood");
    NEI.hide("TConstruct:bootsWood");
    NEI.hide("TConstruct:travelGoggles");
    NEI.hide("TConstruct:travelVest");
    NEI.hide("TConstruct:travelWings");
    NEI.hide("TConstruct:travelBoots");
    NEI.hide("TConstruct:travelGloves");
    NEI.hide("TConstruct:Boneana");
    NEI.override("TConstruct:Pattern", [1,2,3]);
    NEI.override("TConstruct:Cast", [1,2,3]);
}