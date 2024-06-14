import 'package:flutter/material.dart';

class RecipeModel {
  String title;
  String writer;
  String description;
  int cookingTime;
  int servings;
  List<String> ingredients;
  String imgPath;

  RecipeModel({
    required this.title,
    required this.writer,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
  });

  static List<RecipeModel> appetizers = [
    RecipeModel(
      title: 'Brochette de viande',
      writer: "Mme Semde",
      description:
      "Brochette de viande et d'oignons",
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/entree1.jpg',
      ingredients: [
        "Viande (poulet,boeuf,mouton,porc)",
        "Marinade de base (huile,vinaigre,ail,oignon,epices,sel,poivre)",
        "Legumes (poivron,oignon,tomates)",
        "Accompagnemeents (sauce barbecue,pain pita,slade verte)",

      ],
    ),
    RecipeModel(
      title: 'Viande',
      writer: "Mme Zongo",
      description:
      "Plats de viande",
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/entree2.jpg',
      ingredients: [
        "2 Kg de viande",
        "1L d'huile",
      ],
    ),
    RecipeModel(
      title: 'Haricot vert',
      writer: "Mr Kabore",
      description:
      "Plat d'haricot verre",
      cookingTime: 10,
      servings: 1,
      imgPath: 'assets/images/entree3.jpg',
      ingredients: [
        "Haricot verre frais (500g)",
        "Beurre",
        "Ail",
        "Sel",
        "Poivre",
        "Jus de citron",
        "Noisettes",
      ],
    ),
    RecipeModel(
      title: 'Oeuf Bouilli',
      writer: "Mr Ouedraogo",
      description:
      "Plat d'oeuf bouilli sale",
      cookingTime: 10,
      servings: 1,
      imgPath: 'assets/images/entree4.jpg',
      ingredients: [
        "Des oeufs",
        "Assaisonnement",
      ],
    ),
  ];

  static List<RecipeModel> mainDishes = [
    RecipeModel(
      title: 'Riz gras',
      writer: "Mme Yameogo",
      description:
      "Riz cuit dans une sauce riche et epicee avec des legumes",
      cookingTime: 60,
      servings: 4,
      imgPath: 'assets/images/platP4.jpg',
      ingredients: [
        "Riz",
        "Viande ou poisson",
        "Legumes (tomate,carotte,poivron,chou,aubergine,oignon)",
        "Epices et aromates",
        "Liquides (eau,bouillon,huile)",
        "Herbes fraiches (persil,coriande)",
      ],
    ),
    RecipeModel(
      title: 'To sauce koumb vando',
      writer: "Mme Semde",
      description:
      "Pates traditionnelle de cereales accompagnee avec la sauce koumb vando",
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/IMG-20240529-WA0049.jpg',
      ingredients: [
        "Farine de cereale (mil,mais,sorgho,manioc)",
        "Eau (1,5L)",
        "Legumes et condiments (feuilles daubergine,oignon,tomate,ail,poivron,piment)",
        "Huile",
        "Epices et aromates",
        "Viande ou poisson hachee",
        "Liquides (eau,bouillon)",
      ],
    ),
    RecipeModel(
      title: 'Spaguetti',
      writer: "Mme Semde",
      description:
      "Spaguetti cuit dans une sauce riche et epicee avec des legumes",
      cookingTime: 10,
      servings: 4,
      imgPath: 'assets/images/Spaghetti-Bolognese.jpg',
      ingredients: [
        "Spaguetti",
        "Viande ou poisson",
        "Legumes (tomate,carotte,poivron,oignon)",
        "Epices et aromates",
        "Liquides (eau,bouillon,huile)",
        "Herbes fraiches (persil,coriande)",
      ],
    ),
    RecipeModel(
      title: 'Attieke',
      writer: "Mme Semde",
      description:
      "Attieke servi avec du poisson ou de la viande avec des legumes et condiments plus assaisonnement",
      cookingTime: 30,
      servings: 4,
      imgPath: 'assets/images/attieke.jpg',
      ingredients: [
        "Attieke (500g)",
        "Poisson ou viande",
        "Assaisonnement (sel,maggi cube,poivre)",
        "Legumes et condiments (tomate,oignon,comcombre,poivron,piment,huile)",
      ],
    ),
  ];

  static List<RecipeModel> myDesserts = [
    RecipeModel(
      title: 'Deguet',
      writer: 'Ali',
      description: 'Just wait til you break this one out at the breakfast table: Degue,',
      cookingTime: 30,
      servings: 4,
      imgPath: 'assets/images/dessert1.jpg',
      ingredients: [
        'Semoule de mil',
        'Produits laitiers (yaourt,lait concentre,lait de coco)',
        'Sucre et epices (sucre,canelle en poudre,vanille,noix de muscade rapee)',
        'Fruits et autres ajouts',
      ],
    ),
    RecipeModel(
      title: 'Riz au lait',
      writer: 'Ali',
      description: 'plat a base de riz , de lait et du sucre',
      cookingTime: 30,
      servings: 4,
      imgPath: 'assets/images/dessert2.jpg',
      ingredients: [
        'Sugar',
        'Milk',
        'Rice',
      ],
    ),
    RecipeModel(
      title: 'Banane plantain sucre',
      writer: 'Ali',
      description: 'Bananes plantains cuits a lhuile',
      cookingTime: 30,
      servings: 4,
      imgPath: 'assets/images/dessert3.jpg',
      ingredients: [
        'Bananes plantains',
        'Sucre (optionnel)',
        'Epices (optionnel)',
        'Huile',
      ],
    ),
    RecipeModel(
      title: 'Gateau de millet',
      writer: 'Ali',
      description: 'Gateau a base du cereale millet',
      cookingTime: 30,
      servings: 4,
      imgPath: 'assets/images/dessert4.jpg',
      ingredients: [
        'Farine de millet',
        'Oeufs',
        'Sucre',
        'Beurre ou huile',
        'Levure chimique',
        'Lait',
        'Vanille',
        'Sel (une pincee)',
      ],
    ),
  ];
}
