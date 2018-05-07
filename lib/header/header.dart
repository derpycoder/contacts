import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[300],
      title: Text("Contacts 2.0"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search',
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.bookmark),
          tooltip: 'Bookmarks',
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          tooltip: 'More',
          onPressed: null,
        ),
      ],
    );
  }
}
