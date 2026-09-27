import 'package:flutter/material.dart';

import 'data.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Gacoan')),

      body: ListView.builder(
        itemCount: menus.length, //menus itu dari data
        itemBuilder: (context, index) {
          //buat daftar sesuai index
          final menu = menus[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    menu: menu
                    ),
                    ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.network(
                  menu.image, //menu:nama satu benda
                  width: 70,
                  fit: BoxFit.cover,
                ),

                title: Text(menu.name),

                subtitle: Text('${menu.category} - ${menu.price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
