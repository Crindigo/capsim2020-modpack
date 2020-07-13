import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// remove profiling bench, add pattern items as craftable molds for metal press
// leaving temporarily while i add its recipes elsewhere
mods.jei.JEI.removeAndHide(<rockhounding_chemistry:machines_a:11>);

val coilPattern = <rockhounding_chemistry:pattern_items:1>;
val foilPattern = <rockhounding_chemistry:pattern_items:3>;
val armPattern = <rockhounding_chemistry:pattern_items:4>;
val casingPattern = <rockhounding_chemistry:pattern_items:5>;
static gauzePattern as IItemStack = <rockhounding_chemistry:pattern_items:8>;


mods.jei.JEI.addItem(coilPattern);
mods.immersiveengineering.Blueprint.addRecipe("molds", coilPattern, 
    [<ore:plateSteel>*5, <immersiveengineering:tool:1>]);

mods.jei.JEI.addItem(foilPattern);
mods.immersiveengineering.Blueprint.addRecipe("molds", foilPattern, 
    [<ore:plateSteel>*5, <immersiveengineering:tool:1>]);

mods.jei.JEI.addItem(armPattern);
mods.immersiveengineering.Blueprint.addRecipe("molds", armPattern, 
    [<ore:plateSteel>*5, <immersiveengineering:tool:1>]);

mods.jei.JEI.addItem(casingPattern);
mods.immersiveengineering.Blueprint.addRecipe("molds", casingPattern, 
    [<ore:plateSteel>*5, <immersiveengineering:tool:1>]);

mods.jei.JEI.addItem(gauzePattern);
mods.immersiveengineering.Blueprint.addRecipe("molds", gauzePattern, 
    [<ore:plateSteel>*5, <immersiveengineering:tool:1>]);

// 8 crushing gears from iron block + gear mold
mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:crushing_gear>*8, <ore:blockIron>, <immersiveengineering:mold:1>, 2000);
mods.thermalexpansion.Compactor.addGearRecipe(
    <rockhounding_chemistry:crushing_gear>*8, <minecraft:iron_block>, 1500);

// add rods to metal press

val rodPattern = <immersiveengineering:mold:2>;

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:14>*2, <ore:ingotNichrome>, rodPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:24>*2, <ore:ingotCopper>, rodPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:25>*2, <ore:ingotNib>, rodPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:26>*2, <ore:ingotCosm>, rodPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:27>*2, <ore:ingotHastelloy>, rodPattern, 2000);

// add coil/foil/arm/casing/gauze to metal press

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:8>*2, <ore:ingotIron>, coilPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:28>*2, <ore:ingotNimonic>, coilPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:7>*4, <ore:blockGlass>, coilPattern, 2000);

//

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:3>*8, <ore:ingotIron>, foilPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:33>*8, <ore:ingotAluminum>, foilPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:34>*8, <ore:ingotStellite>, foilPattern, 2000);

//

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:4>*2, <ore:ingotIron>, armPattern, 2000);

//

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:5>*20, <ore:blockIron>, casingPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:17>*20, <ore:blockHydronalium>, casingPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:18>*20, <ore:blockHastelloy>, casingPattern, 2000);

mods.immersiveengineering.MetalPress.addRecipe(
    <rockhounding_chemistry:misc_items:29>*20, <ore:blockNimonic>, casingPattern, 2000);

makeGauze(<rockhounding_chemistry:fe_catalyst>, <ore:ingotIron>);
makeGauze(<rockhounding_chemistry:mo_catalyst>, <ore:ingotMolybdenum>);
makeGauze(<rockhounding_chemistry:gr_catalyst>, <ore:ingotGraphite>);
makeGauze(<rockhounding_chemistry:va_catalyst>, <ore:ingotVanadium>);
makeGauze(<rockhounding_chemistry:pt_catalyst>, <ore:ingotPlatinum>);
makeGauze(<rockhounding_chemistry:wg_catalyst>, <ore:ingotWhitegold>);
makeGauze(<rockhounding_chemistry:nl_catalyst>, <ore:ingotNial>);
makeGauze(<rockhounding_chemistry:au_catalyst>, <ore:ingotGold>);
makeGauze(<rockhounding_chemistry:ni_catalyst>, <ore:ingotNickel>);
makeGauze(<rockhounding_chemistry:os_catalyst>, <ore:ingotOsmium>);
makeGauze(<rockhounding_chemistry:ze_catalyst>, <ore:ingotZeolite>);
makeGauze(<rockhounding_chemistry:zn_catalyst>, <ore:ingotZinc>);
makeGauze(<rockhounding_chemistry:co_catalyst>, <ore:ingotCobalt>);
makeGauze(<rockhounding_chemistry:in_catalyst>, <ore:ingotInconel>);

function makeGauze(output as IItemStack, input as IIngredient) {
    mods.immersiveengineering.MetalPress.addRecipe(output, input, gauzePattern, 2000);
}