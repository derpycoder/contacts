import 'package:flutter/material.dart';

import './shared/values/colors.dart';

Widget header(Widget body) {
  return NestedScrollView(
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          backgroundColor: rawGreen,
          title: _searchBar(),
          forceElevated: innerBoxIsScrolled,
          pinned: true,
          floating: true,
          snap: true,
          bottom: _tabBar(),
          actions: <Widget>[
            _notifications(),
            _shareContact(),
          ],
        ),
      ];
    },
    body: body,
  );
}

Widget _searchBar() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      color: obviousWhite,
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
        border: InputBorder.none,
        hintText: 'Search Contacts',
      ),
    ),
  );
}

Widget _notifications() {
  return IconButton(
    icon: Icon(Icons.notifications),
    tooltip: 'Notifications',
    onPressed: () => print("Show Notifications"),
  );
}

Widget _shareContact() {
  return IconButton(
    icon: Icon(Icons.share),
    tooltip: 'Share',
    onPressed: () => print("Share"),
  );
}

Widget _tabBar() {
  return TabBar(
    indicatorColor: obviousWhite,
    tabs: <Widget>[
      Tab(icon: Icon(Icons.account_circle)),
      Tab(icon: Icon(Icons.favorite)),
      Tab(icon: Icon(Icons.contacts)),
      Tab(icon: Icon(Icons.group)),
      Tab(icon: Icon(Icons.archive)),
    ],
  );
}
