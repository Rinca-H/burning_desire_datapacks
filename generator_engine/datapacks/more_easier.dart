import '../constants/items.dart' as ITEMS;
import '../constants/tags.dart' as TAGS;
import '../util/generator.dart';
import '../util/item_expressions.dart';
import '../util/recipes.dart';

var _AE2 = "out/more_easier/data/ae2/recipes/";

class MoreEasier {
  static void gen() {
    generateTo("$_AE2/quartz_glass.json", CraftingShaped(
      [
        ("G", TAGS.GLASS),
        ("Q", ITEMS.CERTUS_QUARTZ_DUST)
      ], [
        "GQ",
        "QG"
      ], ItemStack(ITEMS.QUARTZ_GLASS, 4)
    ));

    generateTo("$_AE2/misc/fluixpearl.json", CraftingShapeless(
      [ITEMS.ENDER_PEARL, ITEMS.FLUIX_DUST],
      ItemStack(ITEMS.FLUIX_PEARL)
    ));

    generateTo("$_AE2/network/blocks/crystal_processing_charger.json", CraftingShaped(
      [
        ("S", TAGS.STEEL),
        ("C", ITEMS.LIGHTNING_ROD)
      ], [
        " C ",
        "S S",
        " C "
      ], ItemStack(ITEMS.CHARGER)
    ));

    generateTo("$_AE2/network/blocks/crystal_growth_accelerator.json", CraftingShaped(
      [
        ("S", TAGS.STEEL),
        ("L", ITEMS.LIGHTNING_ROD),
        ("F", ITEMS.FLUIX_DUST),
        ("B", ITEMS.SKY_STONE_BLOCK)
      ], [
        " L ",
        "FBF",
        " S "
      ], ItemStack(ITEMS.GROWTH_ACCELERATOR)
    ));

    generateTo("$_AE2/network/blocks/inscribers.json", CraftingShaped(
      [
        ("P", ITEMS.PISTON),
        ("S", TAGS.STEEL),
        ("C", TAGS.COPPER),
      ], [
        " P ",
        "C S",
        " P "
      ], ItemStack(ITEMS.INSCRIBER)
    ));
  }
}