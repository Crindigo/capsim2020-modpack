import mods.dropt.Dropt;
import mods.dropt.Rule;
import crafttweaker.item.IItemStack;

function denseRule(block as string, drop as IItemStack) as Rule
{
    return Dropt.rule()
        .matchBlocks([block])
        .addDrop(Dropt.drop()
            .items([drop], Dropt.range(32))
        );
}

Dropt.list("dense_ores")
    .add(denseRule("contenttweaker:dense_copper", <thermalfoundation:ore:0>))
    .add(denseRule("contenttweaker:dense_tin", <thermalfoundation:ore:1>))
    .add(denseRule("contenttweaker:dense_lead", <thermalfoundation:ore:3>))
    .add(denseRule("contenttweaker:dense_silver", <thermalfoundation:ore:2>))
    .add(denseRule("contenttweaker:dense_nickel", <thermalfoundation:ore:5>))

    .add(denseRule("contenttweaker:dense_osmium", <mekanism:oreblock:0>))
    .add(denseRule("contenttweaker:dense_bauxite", <techreborn:ore:4>))
    .add(denseRule("contenttweaker:dense_uranium", <nuclearcraft:ore:4>))
    .add(denseRule("contenttweaker:dense_lithium", <nuclearcraft:ore:6>))
    .add(denseRule("contenttweaker:dense_magnesium", <nuclearcraft:ore:7>))
    .add(denseRule("contenttweaker:dense_thorium", <nuclearcraft:ore:3>))
    .add(denseRule("contenttweaker:dense_boron", <nuclearcraft:ore:5>))

    .add(denseRule("contenttweaker:dense_iron", <minecraft:iron_ore>))
    .add(denseRule("contenttweaker:dense_gold", <minecraft:gold_ore>))
    .add(denseRule("contenttweaker:dense_coal", <minecraft:coal_ore>));