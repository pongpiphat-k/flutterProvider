import 'package:flutter/material.dart';

class Item {
  final String name;
  bool isFavorite;

  Item({required this.name, this.isFavorite = false});
}

class FavoriteItemsModel extends ChangeNotifier {
  final List<Item> _items = [
    Item(name: 'Item #1'),
    Item(name: 'Item #2'),
    Item(name: 'Item #3'),
    Item(name: 'Item #4'),
    Item(name: 'Item #5'),
    Item(name: 'Item #6'),
    Item(name: 'Item #7'),
    Item(name: 'Item #8'),
    Item(name: 'Item #9'),
    Item(name: 'Item #10'),
    Item(name: 'Item #11'),
    Item(name: 'Item #12'),
    Item(name: 'Item #13'),
    Item(name: 'Item #14'),
    Item(name: 'Item #15'),
    Item(name: 'Item #16'),
    Item(name: 'Item #17'),
    Item(name: 'Item #18'),
    Item(name: 'Item #19'),
    Item(name: 'Item #20'),
  ];

  List<Item> get items => _items;

  void toggleFavorite(Item item) {
    final index = _items.indexOf(item);
    if (index != -1) {
      _items[index].isFavorite = !_items[index].isFavorite;
      notifyListeners();
    }
  }
}
