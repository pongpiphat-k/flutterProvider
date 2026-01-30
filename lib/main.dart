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
        body: 
        ListView(
          children: [
            ListTile(
              onTap: () {},
              title: Text(myitems[0]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[1]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[2]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[3]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[4]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[5]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[6]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[7]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[8]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[9]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
              title: Text(myitems[10]),
              leading: Icon(Icons.favorite_border),
            ),
            ListTile(
              onTap: () {},
            
              title: Text(myitems[11]),
              leading: Icon(Icons.favorite_border),
            ),
          ],
        ),
      );
  }
}
// class CounterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Favorite List')),
//       body: Consumer<CounterModel>(
//         builder: (context, counter, child) {
//           return Center(child: Text("Count: ${counter.count}", style: TextStyle(fontSize: 32)));
//         },
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(onPressed: () => increment(context), child: Icon(Icons.add)),
//           SizedBox(height: 10),
//           FloatingActionButton(onPressed: () => reset(context), child: Icon(Icons.refresh)),
//         ],
//       ),
//     );
//   }

  // void increment(context) {
  //   final counter = Provider.of<CounterModel>(context, listen: false);
  //   counter.increment();
  // }

  // void reset(context) {
  //   final counter = Provider.of<CounterModel>(context, listen: false);
  //   counter.reset();
  // }
// }


