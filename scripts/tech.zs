val greenPlastic = <pneumaticcraft:plastic:10>;
val redPlastic = <pneumaticcraft:plastic:1>;
val bluePlastic = <pneumaticcraft:plastic:12>;
val magentaPlastic = <pneumaticcraft:plastic:13>;

val wire = <ore:wireCopper>.firstItem;
//val osmium = <rockhounding_chemistry:os_catalyst>;
val osmium = <ore:plateOsmium>.firstItem;
val iron = <ore:plateIron>.firstItem;
val electrum = <ore:plateElectrum>.firstItem;
val aluminum = <ore:plateMagnalium>.firstItem;
val tungstensteel = <ore:platePlatinum>.firstItem;

// use carpenter for other circuit types
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit:0>);
recipes.remove(<mekanism:controlcircuit:1>);
recipes.remove(<mekanism:controlcircuit:2>);
recipes.remove(<mekanism:controlcircuit:3>);

mods.forestry.Carpenter.addRecipe(<mekanism:controlcircuit:0>, [
    [wire, iron, wire],
    [osmium, greenPlastic, osmium],
    [wire, iron, wire]
], 100, <liquid:tin> * 144);

mods.forestry.Carpenter.addRecipe(<mekanism:controlcircuit:1>, [
    [wire, electrum, wire],
    [osmium, redPlastic, osmium],
    [wire, electrum, wire]
], 100, <liquid:tin> * 288);

mods.forestry.Carpenter.addRecipe(<mekanism:controlcircuit:2>, [
    [wire, aluminum, wire],
    [osmium, bluePlastic, osmium],
    [wire, aluminum, wire]
], 100, <liquid:tin> * 576);

mods.forestry.Carpenter.addRecipe(<mekanism:controlcircuit:3>, [
    [wire, tungstensteel, wire],
    [osmium, magentaPlastic, osmium],
    [wire, tungstensteel, wire]
], 100, <liquid:tin> * 1152);

// use oredict for energyflow circuits
recipes.replaceAllOccurences(<techreborn:part:0>, <ore:circuitMaster>);

// remove TR circuits since oredict works on all
recipes.remove(<techreborn:part:0>);
recipes.remove(<techreborn:part:1>);
recipes.remove(<techreborn:part:29>);
recipes.remove(<techreborn:part:30>);