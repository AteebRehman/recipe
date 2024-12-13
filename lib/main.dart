import 'package:flutter/material.dart';
import 'package:recipe/models/recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text('MyRecipeApp',),
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: Recipes.listOfRecipes.length,
              itemBuilder: (BuildContext context, int index) {
                return buildCard(context, Recipes.listOfRecipes[index]);
              }),
        ));
  }
}

Widget buildCard(BuildContext context, Recipes recipe) {
// 1
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return RecipeDetail(recipe: recipe);
        }),
      );
    },
    child: Container(
      child: Card(
        elevation: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage(recipe.imageUrl),
            ),
            Text(
              recipe.recipeName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ),
    ),
  );
}
