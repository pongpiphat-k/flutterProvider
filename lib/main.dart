import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_items_model.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => FavoriteItemsModel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FavoriteList());
  }
}

class FavoriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

