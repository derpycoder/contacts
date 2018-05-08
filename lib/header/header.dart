import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[300],
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            border: InputBorder.none,
            hintText: 'Search Contacts',
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.share),
          tooltip: 'Share',
          onPressed: () => print("Share"),
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.favorite)),
          Tab(icon: Icon(Icons.contacts)),
          Tab(icon: Icon(Icons.group)),
          Tab(icon: Icon(Icons.archive)),
        ],
      ),
    );
  }
}
