#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.DropTableBuilder; 

//var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build();
//var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(10275286).build();
//var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(15592941).build();
//var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(5658219).build();
//var cobalt = MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(18347).build();

/*
var copperTable = DropTableBuilder.newSlot().addItem("gregtech:ore_copper_0:0", 1, 32);
                
var copperDense = copper.registerPart("dense_ore");
var d = copperDense.getData();
d.addDataValue("drops", copperTable);
d.addDataValue("variants", "minecraft:stone");
d.addDataValue("hardness", "50");
d.addDataValue("resistance", "15");
d.addDataValue("harvestLevel", "1");
d.addDataValue("harvestTool", "pickaxe");
*/

makeDenseOre("dense_coal", 0);
makeDenseOre("dense_iron", 1);
makeDenseOre("dense_gold", 2);
makeDenseOre("dense_copper", 1);
makeDenseOre("dense_tin", 1);
makeDenseOre("dense_lead", 2);
makeDenseOre("dense_silver", 2);
makeDenseOre("dense_nickel", 2);

makeDenseOre("dense_osmium", 2);
makeDenseOre("dense_bauxite", 2);
makeDenseOre("dense_uranium", 2);
makeDenseOre("dense_lithium", 2);
makeDenseOre("dense_boron", 2);
makeDenseOre("dense_magnesium", 2);
makeDenseOre("dense_thorium", 2);

// unused
makeDenseOre("dense_diamond", 2);
makeDenseOre("dense_emerald", 2);
makeDenseOre("dense_lapis", 1);

function makeDenseOre(name as string, level as int) {
    var d = VanillaFactory.createBlock(name, <blockmaterial:rock>);
    // base hardness for ores is 3. so if 30, it takes 10x longer.
    d.setBlockHardness(60.0);
    d.setBlockResistance(15.0);
    d.setToolClass("pickaxe");
    d.setToolLevel(level);
    d.setBlockSoundType(<soundtype:stone>);
    d.register();
}