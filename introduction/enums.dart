enum FoodSize {
  small,
  medium,
  large;
}

enum Foods {
  burger(foodSize: FoodSize.large, useSausage: true, useToppings: true),
  kebab(foodSize: FoodSize.small, useSausage: false, useToppings: true),
  bakso(foodSize: FoodSize.small, useSausage: false, useToppings: true);

  const Foods(
      {required this.foodSize,
      required this.useSausage,
      required this.useToppings});

  final FoodSize foodSize;
  final bool useSausage;
  final bool useToppings;

  bool get isLargerst => foodSize == FoodSize.large;
}

void main() {
  final yourFood = Foods.burger;
  if (yourFood.isLargerst) {
    print('Your food ${yourFood.name} is in largest size.');
  } else {
    print('Your food ${yourFood.name} is not largest size.');
  }
}
