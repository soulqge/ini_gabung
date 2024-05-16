import 'package:gabung2/buku/pages/cart_page.dart';
import 'package:gabung2/buku/pages/home_page.dart';
import 'package:gabung2/buku/pages/item_page.dart';
import 'package:gabung2/buku/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:gabung2/film/page/list_film.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
          '/item': (context) => ItemPage(),
          '/cart': (context) => CartWidget(),
          '/film':(context) => FilmList()
        },
      ),
    ),
  );
}

