//class des recettes
class Recette {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recette(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recette> samples = [
    Recette(
      'DG au poulet roti',
      'assets/1.jpg',
      4,
      [
        Ingredient(
          2,
          'Kg',
          'viande de poulet',
        ),
        Ingredient(
          2,
          'Kg',
          'de pantain',
        ),
        Ingredient(
          1,
          'Kg',
          'Huile d\'arachide',
        ),
        Ingredient(
          100,
          'g',
          'd\'Oignon',
        ),
      ],
    ),
    Recette(
      'Ndole garni Oignon',
      'assets/2.jpg',
      2,
      [
        Ingredient(
          2,
          'Kg',
          'Ndole',
        ),
        Ingredient(
          2,
          'Kg',
          'Oignon',
        ),
        Ingredient(
          1,
          'Kg',
          'Viande',
        ),
      ],
    ),
    Recette(
      'Haché viande',
      'assets/3.jpg',
      1,
      [
        Ingredient(
          2,
          'Kg',
          'Viandes',
        ),
        Ingredient(
          50,
          'g',
          'Poivron',
        ),
        Ingredient(
          50,
          'g',
          'oigon',
        ),
      ],
    ),
    Recette(
      'Igname Sauce Tomate',
      'assets/4.jpg',
      24,
      [
        Ingredient(
          3,
          'Kg',
          'Igname',
        ),
        Ingredient(
          2,
          'Kg',
          'Tomate',
        ),
        Ingredient(
          0.5,
          'kg',
          'Huile d\'arachide',
        ),
      ],
    ),
    Recette(
      'Riz Sauce Haché',
      'assets/5.jpg',
      1,
      [
        Ingredient(
          2,
          'Kg',
          'De Riz',
        ),
        Ingredient(
          1,
          'Kg',
          'Carotte',
        ),
        Ingredient(
          0.5,
          ' kg',
          'Tomate',
        ),
        Ingredient(
          1,
          'Kg',
          'Viande de boeuf',
        ),
      ],
    ),
    Recette(
      'Riz ndole avec viande',
      'assets/6.jpg',
      4,
      [
        Ingredient(
          1,
          'kg',
          'Vous avez besoin du riz',
        ),
        Ingredient(
          1,
          'kg',
          'du ndole',
        ),
        Ingredient(
          1,
          'kg',
          'viande',
        ),
        Ingredient(
          25,
          'g',
          'sel',
        ),
        Ingredient(
          25,
          'g',
          'poivre',
        ),
      ],
    ),
  ];
}

//Class ingredient ici c'est le moule des ingredients de chaque recettes
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
