// //===TANPA DATA
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   final String username;

//   const HomePage({
//     super.key,
//     required this.username,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Halo, $username'),
//       ),

//       body: ListView.builder(
//         itemCount: 10,

//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: const Icon(Icons.fastfood),

//               title: Text(
//                 'Menu ${index + 1}',
//               ),

//               subtitle: const Text(
//                 'Kategori - Rp.10000',
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


//======PAKAI DATA
// import 'package:flutter/material.dart';
// import 'data.dart';

// class HomePage extends StatelessWidget {
//   final String username;

//   const HomePage({
//     super.key,
//     required this.username,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Halo, $username'),
//       ),

//       body: ListView.builder(
//         itemCount: menus.length,

//         itemBuilder: (context, index) {
//           final menu = menus[index];

//           return Card(
//             child: ListTile(
//               leading: Image.network(
//                 menu.image,
//                 width: 70,
//                 fit: BoxFit.cover,
//               ),

//               title: Text(menu.name),

//               subtitle: Text(
//                 '${menu.category} - ${menu.price}',
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//php -S 0.0.0.0:8000

