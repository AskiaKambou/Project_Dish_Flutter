import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recettes_app/NewRecipe.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:recettes_app/model/RecipeMode.dart';
import 'package:recettes_app/Screens/RecipeDetails.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // color: Colors.grey[300],
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              FontAwesomeIcons.home,
              color: Colors.blue,
            ),
            Icon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.red.withOpacity(0.7),
            ),
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Mets Locaux",
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    text: "Entrees".toUpperCase(),
                  ),
                  Tab(
                    text: "Plats principaux".toUpperCase(),
                  ),
                  Tab(
                    text: "Desserts".toUpperCase(),
                  ),
                ],
                labelColor: Colors.black,
                indicator: DotIndicator(
                  color: Colors.black,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                unselectedLabelColor: Colors.black.withOpacity(0.3),
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildRecipeListView(RecipeModel.appetizers),
                    _buildRecipeListView(RecipeModel.mainDishes),
                    _buildRecipeListView(RecipeModel.myDesserts),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildRecipeListView(List<RecipeModel> recipes) {
  return ListView.builder(
    physics: ScrollPhysics(),
    shrinkWrap: true,
    itemCount: recipes.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDetails(
                recipeModel: recipes[index],
              ),
            ),
          ),
          child: RecipeCard(
            recipeModel: recipes[index],
          ),
        ),
      );
    },
  );
}
