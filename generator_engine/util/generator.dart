import 'dart:io';

import 'recipes.dart';

void generateTo(String path, Recipes recipe) {
  var spl = path.split("/");
  Directory(spl.sublist(0, spl.length - 1).join("/")).createSync(recursive: true);
  File(path).writeAsStringSync(recipe.toJsonStr());
}