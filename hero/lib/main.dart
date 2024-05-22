import 'package:flutter/material.dart';
import 'hero_detail_page.dart';

void main() {
  runApp(HeroApp());
}

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroGridPage(),
    );
  }
}

class HeroGridPage extends StatelessWidget {
  final List<HeroData> heroes = [
    HeroData('bilille mahibuba', 'assets/images/hero3.JPG',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'assets/images/hero4.JPG',
        'Long description of Hero 2...'),
    HeroData('Ebbisa Addunya', 'assets/images/Ebbisa.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'assets/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'assets/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'assets/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'assets/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'asset/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'asset/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'asset/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'asset/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'asset/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    HeroData('bilille mahibuba', 'asset/images/hero1.jpg',
        "bbilcdddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjkkkkkkkkkkkkkkkkkleeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrtyuuuuuuuuuuuuuuuuuuuile"),
    HeroData('Jal Battee Urgessa', 'asset/images/hero2.jpg',
        'Long description of Hero 2...'),
    // Add more heroes here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
        itemCount: heroes.length,
        itemBuilder: (context, index) {
          final hero = heroes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroDetailPage(hero: hero),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      hero.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(hero.name),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class HeroData {
  final String name;
  final String imagePath;
  final String description;

  HeroData(this.name, this.imagePath, this.description);
}
