class Recipes {
  String recipeName, imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipes(
      this.recipeName,
      this.imageUrl,
      this.servings,
      this.ingredients,
      );

  static List<Recipes> listOfRecipes = [
    Recipes("Salad", "assets/salad.jpg", 1, [
      Ingredient(1, "box", "Chicken"),
      Ingredient(0.5, "jar", "Sauce"),
      Ingredient(2, "medium", "Onions"),
      Ingredient(1, "cup", "Yogurt"),
    ]),
    Recipes("Burger", "assets/burger.jpg", 1, [
      Ingredient(2, "pieces", "Buns"),
      Ingredient(1, "piece", "Patty"),
      Ingredient(50, "grams", "Lettuce"),
      Ingredient(1, "piece", "Tomato"),
    ]),
    Recipes("Cookies", "assets/cookies.jpg", 1, [
      Ingredient(2, "pieces", "Buns"),
      Ingredient(1, "piece", "Patty"),
      Ingredient(50, "grams", "Lettuce"),
      Ingredient(1, "piece", "Tomato"),
    ]),
    Recipes("Fries ", "assets/fries.jpg", 1, [
      Ingredient(500, "grams", "Ground meat"),
      Ingredient(1, "piece", "Onion, finely chopped"),
      Ingredient(2, "cloves", "Garlic"),
      Ingredient(1, "inch", "Ginger")
    ]),
    Recipes("Pasta", "assets/pasta.jpg", 1, [
      Ingredient(200, "grams", "boneless Chicken "),
      Ingredient(2, "pieces", "Pita bread"),
      Ingredient(1 / 4, "cup", "Mayonnaise"),
    ]),
    Recipes("Pastry", "assets/pastry.jpg", 1, [
      Ingredient(1, "piece", "Pizza dough"),
      Ingredient(1 / 2, "cup", "Pizza sauce"),
      Ingredient(2, "cups", "mozzarella cheese"),
    ]),
  ];
}

class Ingredient {
  double quantity;
  String measure, name;

  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}
