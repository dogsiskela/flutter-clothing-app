import 'package:flutter/material.dart';
import '../models/clothing.dart';
import 'clothing_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<ClothingItem> items = [
    ClothingItem(
      name: 'Блуза на кратки',
      imageUrl: 'assets/images/bluza.webp',
      description: 'Минималистична портокалова блуза',
      price: 999,
    ),
    ClothingItem(
      name: 'Фармерки',
      imageUrl: 'assets/images/jeans.jpg',
      description: 'Класични олд-скул фармерки.',
      price: 1299,
    ),
    ClothingItem(
      name: 'Интересни чорапи',
      imageUrl: 'assets/images/corapi.png',
      description: 'Шарени чорапи за уникатен изглед.',
      price: 199,
    ),
    ClothingItem(
      name: 'Капа',
      imageUrl: 'assets/images/kapa.jpeg',
      description: 'Капа со натпис.',
      price: 500,
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('193147'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(items[index].imageUrl),
              title: Text(items[index].name),
              subtitle: Text(
                '${items[index].price} MKD',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(item: items[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
