import 'dart:convert';

import 'item_expressions.dart';

var _jsonEncoder = JsonEncoder.withIndent("  ");

abstract class Recipes {
  String type;

  Recipes(this.type);

  String toJsonStr();
}

class CraftingShapeless extends Recipes {
  String category = "misc";
  List<ItemLike> ingredients;
  ItemStack result;

  CraftingShapeless(this.ingredients, this.result): super("minecraft:crafting_shapeless");

  @override
  String toJsonStr() {
    return _jsonEncoder.convert({
      "type": this.type,
      "category": category,
      "ingredients": [
        for(var i in ingredients) i.toJson()
      ],
      "result": result.toJson()
    });
  }
}

class CraftingShaped extends Recipes {
  String category = "misc";
  dynamic key = {};
  late List<String> pattern;
  ItemStack result;
  bool showNotification = false;

  CraftingShaped(List<(String, ItemLike)> pKey, List<String> pPattern, this.result): super("minecraft:crafting_shaped") {
    List<String> cache = [];
    for(var p in pKey) {
      var ch = p.$1;
      if(cache.contains(ch)) throw Exception("重複するキー: ${ch}");

      cache.add(ch);
      key[ch] = p.$2.toJson();
    }

    var patternKeys = pPattern.join("").split("");
    for(var ch in patternKeys) {
      if(ch != " " && !cache.contains(ch)) throw Exception("未定義のキー: $ch");
    }

    this.pattern = pPattern;
  }

  @override
  String toJsonStr() {   
    return _jsonEncoder.convert({
      "type": this.type,
      "key": key,
      "pattern": pattern,
      "result": result,
      if(showNotification) "show_notification": true
    });
  }
}

class Smelting extends Recipes {
  String category = "misc";
  int cookingTime;
  double experience;
  ItemLike ingredient;
  ItemStack result;

  Smelting(this.cookingTime, this.experience, this.ingredient, this.result): super("minecraft:smelting");

  @override
  String toJsonStr() {
    return _jsonEncoder.convert({
      "type": this.type,
      "category": this.category,
      "cookingtime": cookingTime,
      "experience": experience,
      "ingredient": ingredient.toJson(),
      "result": result.toJson()
    });
  }
}

class Smoking extends Smelting {
  Smoking(int pCookingTime, double pExperience, ItemLike pIngredient, ItemStack pResult): super(pCookingTime, pExperience, pIngredient, pResult) {
    this.type = "minecraft:smoking";
  }
}

class Blasting extends Smelting {
  Blasting(int pCookingTime, double pExperience, ItemLike pIngredient, ItemStack pResult): super(pCookingTime, pExperience, pIngredient, pResult) {
    this.type = "minecraft:smoking";
  }
}

class CastingBasin extends Recipes {
  ItemLike cast;
  bool castConsumed = true;
  int coolingTime;
  FluidStack fluid;
  Item result;

  CastingBasin(this.cast, this.coolingTime, this.fluid, this.result): super("tconstruct:retextured_casting_basin");

  @override
  String toJsonStr() {
    return _jsonEncoder.convert({
      "type": this.type,
      "cast": cast.toJson(),
      "cast_consumed": castConsumed,
      "cooling_time": coolingTime,
      "fluid": fluid.toJson(),
      "result": result.id
    });
  }
}

class Nucleosynthesizing extends Recipes {
  GasStack gasInput;
  int duration;
  ItemLike ingredient;
  ItemStack result;

  Nucleosynthesizing(this.gasInput, this.duration, this.ingredient, this.result): super("mekanism:nucleosynthesizing");

  @override
  String toJsonStr() {
    return _jsonEncoder.convert({
      "type": this.type,
      "gasInput": gasInput.toJson(),
      "duration": duration,
      "itemInput": {
        "ingredient": ingredient.toJson()
      },
      "output": result.toJson()
    });
  }
}

class Deploying extends Recipes {
  List<ItemLike> ingredients;
  bool keepHeldItem;
  List<ItemStack> results;

  Deploying(this.ingredients, this.keepHeldItem, this.results): super("create:deploying");

  @override
  String toJsonStr() {
    return _jsonEncoder.convert({
      "type": this.type,
      "ingredients": [
        for(var i in ingredients) i.toJson()
      ],
      "keepHeldItem": keepHeldItem,
      "results": [
        for(var i in results) i.toJson()
      ]
    });
  }
}

class Crushing extends Recipes {
  List<ItemLike> ingredients;
  int processingTime;
  List<(ItemStack, double)> results;

  Crushing(this.ingredients, this.processingTime, this.results): super("create:crushing");

  @override
  String toJsonStr() {
    return _jsonEncoder.convert({
      "type": this.type,
      "ingredients": [
        for(var i in ingredients) i.toJson()
      ],
      "processingTime": processingTime,
      "results": [
        for(var i in results) {
          if(0 <= i.$2 && i.$2 < 1 ) "chance": i.$2,
          ...i.$1.toJson()
        }
      ]
    });
  }
}