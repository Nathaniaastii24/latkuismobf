import 'package:flutter/material.dart';
import 'data.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;

  const DetailPage({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Menu'),
      ),
      body: Column(
        children: [
          Image.network(
            menu.image,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),

          Text(menu.name),

          Text(menu.category),

          Text(menu.price),

          Text(menu.description),
        ],
      ),
    );
  }
}