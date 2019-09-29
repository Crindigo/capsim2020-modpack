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
    /*.add(denseRule("contenttweaker:dense_copper", <>))
    .add(denseRule("contenttweaker:dense_tin", <>))
    .add(denseRule("contenttweaker:dense_lead", <>))
    .add(denseRule("contenttweaker:dense_silver", <>))
    .add(denseRule("contenttweaker:dense_nickel", <>))

    .add(denseRule("contenttweaker:dense_osmium", <>))
    .add(denseRule("contenttweaker:dense_bauxite", <>))
    .add(denseRule("contenttweaker:dense_uranium", <>))
    .add(denseRule("contenttweaker:dense_lithium", <>))
    .add(denseRule("contenttweaker:dense_magnesium", <>))
    .add(denseRule("contenttweaker:dense_thorium", <>))
    .add(denseRule("contenttweaker:dense_boron", <>))
*/

    .add(denseRule("contenttweaker:dense_iron", <minecraft:iron_ore>))
    .add(denseRule("contenttweaker:dense_gold", <minecraft:gold_ore>))
    .add(denseRule("contenttweaker:dense_coal", <minecraft:coal_ore>));