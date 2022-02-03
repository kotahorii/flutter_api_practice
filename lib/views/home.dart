import 'package:flutter/material.dart';
import 'package:flutter_api_practice/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.restaurant_menu),
            SizedBox(
              width: 10,
            ),
            Text('Food Recipe')
          ],
        ),
      ),
      body: RecipeCard(
        title: 'My recipe',
        cookTime: '30 min',
        rating: '4.3',
        thumbnailUrl: 'http',
      ),
    );
  }
}
