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
          onPressed: () => print("Search"),
        ),
        IconButton(
          icon: Icon(Icons.bookmark),
          tooltip: 'Bookmarks',
          onPressed: () => print("Bookmarks"),
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          tooltip: 'More',
          onPressed: () => print("More"),
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.camera)),
          Tab(text: "Shared With"),
          Tab(icon: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
