if (FML.isModLoaded("ThermalExpansion")){
    NEI.override("ThermalExpansion:Machine", [0,2,4,5,6,9]);
    NEI.override("ThermalExpansion:Device", [2,3,5]);
    NEI.hide("ThermalExpansion:Dynamo");
    NEI.hide("ThermalExpansion:Cell");
    NEI.override("ThermalExpansion:Tank", [0,1,2,4]);
    NEI.hide("ThermalExpansion:Strongbox");
    NEI.hide("ThermalExpansion:Cache");
    NEI.hide("ThermalExpansion:Tesseract");
    NEI.override("ThermalExpansion:Plate", [0,1,2,3,4,5]);
    NEI.override("ThermalExpansion:Frame", [0,1,2,3,10,11,12]);
    NEI.hide("ThermalExpansion:Rockwool");
    NEI.override("ThermalExpansion:Workbench", [4]);
    NEI.hide("ThermalExpansion:wrench");
    NEI.hide("ThermalExpansion:tool.battleWrenchInvar");
    NEI.hide("ThermalExpansion:pump");
    NEI.hide("ThermalExpansion:transfuser");
    NEI.hide("ThermalExpansion:capacitor");
    NEI.hide("ThermalExpansion:satchel");
    NEI.override("ThermalExpansion:material", [16,512,513,516,517]);
    NEI.override("ThermalExpansion:augment", [0,1,16,32,128,129,130,256]);
}

if (FML.isModLoaded("ThermalFoundation")){
    NEI.hide("ThermalFoundation:lexicon");
    // Copper
    NEI.hide("ThermalFoundation:armor.helmetCopper");
    NEI.hide("ThermalFoundation:armor.plateCopper");
    NEI.hide("ThermalFoundation:armor.legsCopper");
    NEI.hide("ThermalFoundation:armor.bootsCopper");
    NEI.hide("ThermalFoundation:tool.swordCopper");
    NEI.hide("ThermalFoundation:tool.shovelCopper");
    NEI.hide("ThermalFoundation:tool.pickaxeCopper");
    NEI.hide("ThermalFoundation:tool.axeCopper");
    NEI.hide("ThermalFoundation:tool.hoeCopper");
    NEI.hide("ThermalFoundation:tool.fishingRodCopper");
    NEI.hide("ThermalFoundation:tool.sickleCopper");
    NEI.hide("ThermalFoundation:tool.bowCopper");
    NEI.hide("ThermalFoundation:tool.shearsCopper");
    // Tin
    NEI.hide("ThermalFoundation:armor.helmetTin");
    NEI.hide("ThermalFoundation:armor.plateTin");
    NEI.hide("ThermalFoundation:armor.legsTin");
    NEI.hide("ThermalFoundation:armor.bootsTin");
    NEI.hide("ThermalFoundation:tool.swordTin");
    NEI.hide("ThermalFoundation:tool.shovelTin");
    NEI.hide("ThermalFoundation:tool.pickaxeTin");
    NEI.hide("ThermalFoundation:tool.axeTin");
    NEI.hide("ThermalFoundation:tool.hoeTin");
    NEI.hide("ThermalFoundation:tool.fishingRodTin");
    NEI.hide("ThermalFoundation:tool.sickleTin");
    NEI.hide("ThermalFoundation:tool.bowTin");
    NEI.hide("ThermalFoundation:tool.shearsTin");
    // Silver
    NEI.hide("ThermalFoundation:armor.helmetSilver");
    NEI.hide("ThermalFoundation:armor.plateSilver");
    NEI.hide("ThermalFoundation:armor.legsSilver");
    NEI.hide("ThermalFoundation:armor.bootsSilver");
    NEI.hide("ThermalFoundation:tool.swordSilver");
    NEI.hide("ThermalFoundation:tool.shovelSilver");
    NEI.hide("ThermalFoundation:tool.pickaxeSilver");
    NEI.hide("ThermalFoundation:tool.axeSilver");
    NEI.hide("ThermalFoundation:tool.hoeSilver");
    NEI.hide("ThermalFoundation:tool.fishingRodSilver");
    NEI.hide("ThermalFoundation:tool.sickleSilver");
    NEI.hide("ThermalFoundation:tool.bowSilver");
    NEI.hide("ThermalFoundation:tool.shearsSilver");
    // Lead
    NEI.hide("ThermalFoundation:armor.helmetLead");
    NEI.hide("ThermalFoundation:armor.plateLead");
    NEI.hide("ThermalFoundation:armor.legsLead");
    NEI.hide("ThermalFoundation:armor.bootsLead");
    NEI.hide("ThermalFoundation:tool.swordLead");
    NEI.hide("ThermalFoundation:tool.shovelLead");
    NEI.hide("ThermalFoundation:tool.pickaxeLead");
    NEI.hide("ThermalFoundation:tool.axeLead");
    NEI.hide("ThermalFoundation:tool.hoeLead");
    NEI.hide("ThermalFoundation:tool.fishingRodLead");
    NEI.hide("ThermalFoundation:tool.sickleLead");
    NEI.hide("ThermalFoundation:tool.bowLead");
    NEI.hide("ThermalFoundation:tool.shearsLead");
    // Nickel
    NEI.hide("ThermalFoundation:armor.helmetNickel");
    NEI.hide("ThermalFoundation:armor.plateNickel");
    NEI.hide("ThermalFoundation:armor.legsNickel");
    NEI.hide("ThermalFoundation:armor.bootsNickel");
    NEI.hide("ThermalFoundation:tool.swordNickel");
    NEI.hide("ThermalFoundation:tool.shovelNickel");
    NEI.hide("ThermalFoundation:tool.pickaxeNickel");
    NEI.hide("ThermalFoundation:tool.axeNickel");
    NEI.hide("ThermalFoundation:tool.hoeNickel");
    NEI.hide("ThermalFoundation:tool.fishingRodNickel");
    NEI.hide("ThermalFoundation:tool.sickleNickel");
    NEI.hide("ThermalFoundation:tool.bowNickel");
    NEI.hide("ThermalFoundation:tool.shearsNickel");
    // Electrum
    NEI.hide("ThermalFoundation:armor.helmetElectrum");
    NEI.hide("ThermalFoundation:armor.plateElectrum");
    NEI.hide("ThermalFoundation:armor.legsElectrum");
    NEI.hide("ThermalFoundation:armor.bootsElectrum");
    NEI.hide("ThermalFoundation:tool.swordElectrum");
    NEI.hide("ThermalFoundation:tool.shovelElectrum");
    NEI.hide("ThermalFoundation:tool.pickaxeElectrum");
    NEI.hide("ThermalFoundation:tool.axeElectrum");
    NEI.hide("ThermalFoundation:tool.hoeElectrum");
    NEI.hide("ThermalFoundation:tool.fishingRodElectrum");
    NEI.hide("ThermalFoundation:tool.sickleElectrum");
    NEI.hide("ThermalFoundation:tool.bowElectrum");
    NEI.hide("ThermalFoundation:tool.shearsElectrum");
    // Invar
    NEI.hide("ThermalFoundation:tool.swordInvar");
    NEI.hide("ThermalFoundation:tool.shovelInvar");
    NEI.hide("ThermalFoundation:tool.pickaxeInvar");
    NEI.hide("ThermalFoundation:tool.axeInvar");
    NEI.hide("ThermalFoundation:tool.hoeInvar");
    NEI.hide("ThermalFoundation:tool.fishingRodInvar");
    NEI.hide("ThermalFoundation:tool.sickleInvar");
    NEI.hide("ThermalFoundation:tool.bowInvar");
    NEI.hide("ThermalFoundation:tool.shearsInvar");
    // Bronze
    NEI.hide("ThermalFoundation:armor.helmetBronze");
    NEI.hide("ThermalFoundation:armor.plateBronze");
    NEI.hide("ThermalFoundation:armor.legsBronze");
    NEI.hide("ThermalFoundation:armor.bootsBronze");
    NEI.hide("ThermalFoundation:tool.swordBronze");
    NEI.hide("ThermalFoundation:tool.shovelBronze");
    NEI.hide("ThermalFoundation:tool.pickaxeBronze");
    NEI.hide("ThermalFoundation:tool.axeBronze");
    NEI.hide("ThermalFoundation:tool.hoeBronze");
    NEI.hide("ThermalFoundation:tool.fishingRodBronze");
    NEI.hide("ThermalFoundation:tool.sickleBronze");
    NEI.hide("ThermalFoundation:tool.bowBronze");
    NEI.hide("ThermalFoundation:tool.shearsBronze");
    // Platinum
    NEI.hide("ThermalFoundation:armor.helmetPlatinum");
    NEI.hide("ThermalFoundation:armor.platePlatinum");
    NEI.hide("ThermalFoundation:armor.legsPlatinum");
    NEI.hide("ThermalFoundation:armor.bootsPlatinum");
    NEI.hide("ThermalFoundation:tool.swordPlatinum");
    NEI.hide("ThermalFoundation:tool.shovelPlatinum");
    NEI.hide("ThermalFoundation:tool.pickaxePlatinum");
    NEI.hide("ThermalFoundation:tool.axePlatinum");
    NEI.hide("ThermalFoundation:tool.hoePlatinum");
    NEI.hide("ThermalFoundation:tool.fishingRodPlatinum");
    NEI.hide("ThermalFoundation:tool.sicklePlatinum");
    NEI.hide("ThermalFoundation:tool.bowPlatinum");
    NEI.hide("ThermalFoundation:tool.shearsPlatinum");
}