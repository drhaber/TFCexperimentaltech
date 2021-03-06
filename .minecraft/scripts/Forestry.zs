import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<forestry:bottler>);
recipes.remove(<forestry:squeezer>);

//Carpenter Planks
val iPlanks = [<tfc:wood/planks/acacia>,<tfc:wood/planks/ash>,<tfc:wood/planks/aspen>,<tfc:wood/planks/birch>,<tfc:wood/planks/blackwood>,<tfc:wood/planks/chestnut>,<tfc:wood/planks/douglas_fir>,<tfc:wood/planks/hickory>,<tfc:wood/planks/kapok>,<tfc:wood/planks/maple>,<tfc:wood/planks/oak>,<tfc:wood/planks/palm>,<tfc:wood/planks/pine>,<tfc:wood/planks/rosewood>,<tfc:wood/planks/sequoia>,<tfc:wood/planks/spruce>,<tfc:wood/planks/sycamore>,<tfc:wood/planks/white_cedar>,<tfc:wood/planks/willow>,<tfc:wood/planks/hevea>] as IItemStack[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>,<tfc:wood/lumber/birch>,<tfc:wood/lumber/blackwood>,<tfc:wood/lumber/chestnut>,<tfc:wood/lumber/douglas_fir>,<tfc:wood/lumber/hickory>,<tfc:wood/lumber/kapok>,<tfc:wood/lumber/maple>,<tfc:wood/lumber/oak>,<tfc:wood/lumber/palm>,<tfc:wood/lumber/pine>,<tfc:wood/lumber/rosewood>,<tfc:wood/lumber/sequoia>,<tfc:wood/lumber/spruce>,<tfc:wood/lumber/sycamore>,<tfc:wood/lumber/white_cedar>,<tfc:wood/lumber/willow>,<tfc:wood/lumber/hevea>] as IItemStack[];

for i, il in iLumber{
mods.forestry.Carpenter.addRecipe(iPlanks[i]*4,[
    [null,null,null],
    [il,il,null],
    [il,il,null]],30,<liquid:water>*50);
}    
//Clockwork Engine
recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_clockwork>,[
	[null,<ore:blockGlass>,null],
	[<ore:longRodBrass>,<minecraft:piston>,<ore:longRodBrass>],
	[<ore:sheetBrass>,<embers:winding_gears>,<ore:sheetBrass>]]);
/*
//Compost
recipes.remove(<forestry:fertilizer_bio>);
recipes.addShaped(<forestry:fertilizer_bio>*4,[
	[<ore:itemFood>,<ore:itemFood>,<ore:itemFood>],
	[<ore:itemFood>,<ore:dirt>,<ore:itemFood>],
	[<ore:itemFood>,<ore:itemFood>,<ore:itemFood>]]);
*/
//Soldering Iron

recipes.remove(<forestry:soldering_iron>);
recipes.addShaped(<forestry:soldering_iron>,[
	[<tfctech:metal/wrought_iron_rod>,null,null],
	[null,<tfctech:metal/wrought_iron_rod>,<tfc:ceramics/fired/fire_brick>],
	[null,<tfc:ceramics/fired/fire_brick>,<embers:superheater>]]);

//Kerosene
mods.forestry.Still.addRecipe(<liquid:kerosene>, <liquid:oil>, 200);    

//Seed Oil
mods.forestry.Squeezer.removeRecipe(<liquid:seed.oil>);

//Circuits
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
recipes.addShaped(<forestry:chipsets>,[
	[<tfc:metal/sheet/mithril>],
	[<pneumaticcraft:unassembled_pcb>],
	[<projectred-transmission:wire:17>]]);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
recipes.addShaped(<forestry:chipsets:1>,[
	[<tfc:metal/sheet/rose_gold>],
	[<pneumaticcraft:advanced_pcb>],
	[<projectred-transmission:wire:17>]]);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
recipes.addShaped(<forestry:chipsets:2>,[
	[<tfc:metal/sheet/silver>,null],
	[<pneumaticcraft:advanced_pcb>,<pneumaticcraft:advanced_pcb>,],
	[<projectred-transmission:wire:17>,<projectred-transmission:wire:17>]]);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>);
recipes.addShaped(<forestry:chipsets:3>,[
	[null,<tfc:metal/sheet/electrum>,null],
	[<pneumaticcraft:advanced_pcb>,<pneumaticcraft:advanced_pcb>,<pneumaticcraft:advanced_pcb>],
	[<projectred-transmission:wire:17>,<projectred-transmission:wire:17>,<projectred-transmission:wire:17>]]);


//Charcoal Pile
val Pwalls = [<minecraft:clay>,<minecraft:end_stone>,<minecraft:end_bricks>,<minecraft:dirt>,<minecraft:gravel>,<minecraft:netherrack>,<forestry:loam>,<forestry:ash_brick>] as IItemStack[];
for pw in Pwalls{
mods.forestry.CharcoalWall.removeWallStack(pw);
}

//Candle
mods.forestry.Carpenter.removeRecipe(<forestry:candle>);
recipes.remove(<forestry:candle>);
recipes.addShaped(<forestry:candle>,[
	[<minecraft:glowstone_dust>],
	[<ore:tallow>],
	[<ore:tallow>]]);