class Recipe {
  String label = '';
  String imageUrl = '';

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/nhoque.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/sopatomate.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/doritos.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/cookies.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/torrada.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/pizza.jpg',
    ),
  ];
}
//TODO: Add Ingredient() here