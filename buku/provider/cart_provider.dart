import 'package:gabung2/buku/models/item.dart';
import 'package:flutter/material.dart';

class CartItem {
  late final Item barang;
  late int jumlah; 

  CartItem({required this.barang, this.jumlah = 1}); 
}

class CartProvider extends ChangeNotifier {
  List<CartItem> _cartItems = [];
  List<CartItem> get cartItems => _cartItems;

  void addToCart(Item barang) {
    for (CartItem item in _cartItems) {
      if (item.barang.id == barang.id) {
        item.jumlah++;
        notifyListeners();
        return;
      }
    }
    _cartItems.add(CartItem(barang: barang));
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  double getTotal() {
    return _cartItems.fold(0, (total, item) => total + item.barang.harga * item.jumlah);
  }
}
