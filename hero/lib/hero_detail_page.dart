import 'package:flutter/material.dart';
import 'main.dart';

class HeroDetailPage extends StatelessWidget {
  final HeroData hero;

  HeroDetailPage({required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hero.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                Image.asset(hero.imagePath, fit: BoxFit.cover),
                // Add more images here if necessary
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(hero.description),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
