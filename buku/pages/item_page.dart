import 'package:gabung2/buku/models/item.dart';
import 'package:gabung2/buku/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    final cartProvider = Provider.of<CartProvider>(context); 

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Buku"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Image.network(itemArgs.foto, height: 200, width: 200),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              itemArgs.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text(itemArgs.desc),
            Padding(padding: EdgeInsets.all(8)),
            Text("Harga : " + itemArgs.harga.toString()),
            Expanded(child: Container()),
            ElevatedButton(
              onPressed: () {
                cartProvider.addToCart(itemArgs); // Using the correct variable name
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Item Berhasil Ditambahkan"),
                  ),
                );
              },
              child: Text("Tambahkan Ke Keranjang"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(150, 50)),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
