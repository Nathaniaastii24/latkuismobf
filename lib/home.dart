import 'package:flutter/material.dart';

import 'data.dart';
import 'detail.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halo, $username'),
        actions: [
          IconButton(
            onPressed: () {
              // navigasi ke profil page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(username: username),
                ),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: menus.length, //menus itu dari data
        itemBuilder: (context, index) {
          //buat daftar sesuai index
          final menu = menus[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailPage(menu: menu)),
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
