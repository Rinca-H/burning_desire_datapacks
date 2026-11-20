abstract class ItemLike {
  String id;

  ItemLike(this.id);

  dynamic toJson();
}

class Item extends ItemLike {
  Item(String pNameSpace, String pId): super("$pNameSpace:$pId");

  @override
  toJson() {
    return { "item": this.id };
  }
}

class Tag extends ItemLike {
  Tag(String pNameSpace, String pId): super("$pNameSpace:$pId");

  @override
  toJson() {
    return { "tag": this.id };
  }
}

class ItemStack {
  Item item;
  int count;

  ItemStack(this.item, [this.count = 1]);

  toJson() {
    return {
      "item": item.id,
      if(count > 1) "count": count
    };
  }
}

class FluidType {
  String id;
  FluidType(String pNameSpace, String pId): this.id = "$pNameSpace:$pId";
}

class FluidStack {
  FluidType fluid;
  int amount;

  FluidStack(this.fluid, [this.amount = 1000]);

  toJson() {
    return {
      "tag": fluid.id,
      if(amount > 1) "amount": amount
    };
  }
}

class GasType {
  String id;
  GasType(String pNameSpace, String pId): this.id = "$pNameSpace:$pId";
}

class GasStack {
  GasType gas;
  int amount;

  GasStack(this.gas, [this.amount = 1000]);

  toJson() {
    return {
      "gas": gas.id,
      if(amount > 1) "amount": amount
    };
  }
}