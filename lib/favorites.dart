import 'package:flutter/material.dart';



class FavoritesWords extends StatelessWidget {
  FavoritesWords({
   @required this.tiles
});
  final tiles;
  @override
  Widget build(BuildContext context) {

    final List<Widget> divided = ListTile
        .divideTiles(
      context: context,
      tiles: tiles,
    )
        .toList();
    return Scaffold(         // Add 6 lines from here...
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }

  }
