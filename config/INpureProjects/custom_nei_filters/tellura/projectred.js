if (FML.isModLoaded("ProjRed|Core")){
    NEI.override("ProjRed|Core:projectred.core.part",
        [0,1,2,3,4,5,6,7,8,9,10,13,14,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,37,38,39,55]
    );
    NEI.hide("ProjRed|Core:projectred.core.drawplate");
    NEI.hide("ProjRed|Core:projectred.core.datacard");
}

if (FML.isModLoaded("ProjRed|Integration")){
    NEI.override(
        "ProjRed|Integration:projectred.integration.gate",
        [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]
    );
}

if (FML.isModLoaded("ProjRed|Transmission")){
    NEI.override(
        "ProjRed|Transmission:projectred.transmission.wire",
        [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]
    );
    NEI.override(
        "ProjRed|Transmission:projectred.transmission.framewire",
        [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
    );
}