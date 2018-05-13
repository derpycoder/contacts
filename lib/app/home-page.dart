import 'package:flutter/material.dart';

import './header.dart';
import './sidebar.dart';
import './tabs/contacts.dart';
import './tabs/favorites.dart';
import './tabs/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        body: header(_tabBody()),
        floatingActionButton: _addContact(),
        drawer: Sidebar(),
      ),
    );
  }
}

Widget _tabBody() {
  return TabBarView(
    children: [
      ProfileTab(),
      FavoritesTab(),
      ContactsTab(),
      Center(child: Text("Groups")),
      Center(child: Text("Trash Can")),
    ],
  );
}

Widget _addContact() {
  return FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: () => print("Yay"),
  );
}
