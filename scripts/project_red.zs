# Materials
var redAlloyIngot               = <ProjRed|Core:projectred.core.part:10>;
var redIronCompound             = <ProjRed|Core:projectred.core.part:40>;
var electrotineAlloyIngot       = <ProjRed|Core:projectred.core.part:55>;
var electrotineIronCompound     = <ProjRed|Core:projectred.core.part:57>;
var ingotCast                   = <TConstruct:metalPattern>;

# Devices


# Ore Dictionary Items

################################################################
### Removal ####################################################
################################################################
# Red Iron Compound
recipes.remove(redIronCompound);

# Electrotine Alloy Ingot
recipes.remove(electrotineIronCompound);


################################################################
### STONE TIER #################################################
################################################################


################################################################
### TINKER TIER ################################################
################################################################


################################################################
### ALCHEMY TIER ###############################################
################################################################


################################################################
### INFUSTION TIER #############################################
################################################################
# Red Alloy Ingot (Tumultuous Material)
recipes.remove(redAlloyIngot);
furnace.remove(redAlloyIngot);
mods.thermalexpansion.Furnace.removeRecipe(redIronCompound);
redAlloyIngot.displayName = "\u00A74Tumultuous Material";
redAlloyIngot.addTooltip(format.lightPurple("Oddly, its warmth is quite pleasant."));
mods.tconstruct.Casting.addTableRecipe(redAlloyIngot, <liquid:pyrotheum> * 250, ingotCast, false, 50);

# Electrotine Alloy Ingot (Deliquescent Material)
recipes.remove(electrotineAlloyIngot);
furnace.remove(electrotineAlloyIngot);
mods.thermalexpansion.Furnace.removeRecipe(electrotineIronCompound);
electrotineAlloyIngot.displayName = "\u00A73Deliquescent Material ";
electrotineAlloyIngot.addTooltip(format.lightPurple("Your fingers sink just a bit into it's surface when you touch it."));
mods.tconstruct.Casting.addTableRecipe(electrotineAlloyIngot, <liquid:cryotheum> * 250, ingotCast, false, 50);

################################################################
### VOID TIER ##################################################
################################################################