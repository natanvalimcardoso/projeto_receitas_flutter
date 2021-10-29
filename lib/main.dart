import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        // 4
        child: ListView.builder(
          //conStroi uma lista
          // 5
          itemCount:
              Recipe.samples.length, //numero de linhas que a lista possui
          // 6
          itemBuilder: (BuildContext context, int index) {
            //controi a arvores de widget para cada linha
            // 7
            Widget buildRecipeCard(Recipe recipe) {
              // 1
              return Card(
                // 2
                child: Column(
                  // 3
                  children: <Widget>[
                    // 4
                    Image(image: AssetImage(recipe.imageUrl)),
                    // 5
                    Text(recipe.label),
                  ],
                ),
              );
            }
            return buildRecipeCard(Recipe.samples[index]);
          },
        ),
      ),
    );
  }
}
