import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => CounterModel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FavoriteList());
  }
}

class FavoriteList extends StatelessWidget {
  bool isFavorite = false;
 

  @override
  Widget build(BuildContext context) {
    List myitems = ['Item #1', 'Item #2', 'Item #3', 'Item #4', 'Item #5', 'Item #6', 'Item #7', 'Item #8', 'Item #9', 'Item #10', 'Item #11', 'Item #12'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite List')
        ),
      body: Consumer<FavoriteItemsModel>(
        builder: (context, favoriteItemsModel, child) {
          return ListView.builder(
            itemCount: favoriteItemsModel.items.length,
            itemBuilder: (context, index) {
              final item = favoriteItemsModel.items[index];
              return ListTile(
                onTap: () {
                  favoriteItemsModel.toggleFavorite(item);
                },
                title: Text(item.name),
                trailing: Icon(
                  item.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: item.isFavorite ? Colors.red : null,
                ),
              );
            },
          );
        },
      ),
      );
  }
}

