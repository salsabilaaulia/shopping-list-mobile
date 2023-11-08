import 'package:flutter/material.dart';
import 'package:shopping_list/screens/menu.dart';
// TODO: Impor halaman ShopFormPage jika sudah dibuat
import 'package:shopping_list/screens/shoplist_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
            // TODO: Bagian drawer header
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat seluruh keperluan belanjamu di sini!",
                  textAlign: TextAlign.center, // Center alignment
                  style: TextStyle(
                    fontSize: 15, // Font size 15
                    color: Colors.white, // White text color
                    fontWeight: FontWeight.normal, // Normal font weight
                  ),
                ),
              ],
            ),
          ),
          // TODO: Bagian routing
            ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                    ));
            },
            ),
            ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopFormPage(),
                ),
              );
            },
            ),
        ],
      ),
    );
  }
}