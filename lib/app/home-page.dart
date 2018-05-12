import 'package:flutter/material.dart';

import './header.dart';
import './sidebar.dart';
import './tabs/contacts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        appBar: Header().build(context),
        body: SafeArea(
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              Center(child: Text("Profile")),
              Center(child: Text("Favorites")),
              ContactsTab(),
              Center(child: Text("Groups")),
              Center(child: Text("Trash Can")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print("Yay"),
        ),
        drawer: Sidebar(),
      ),
    );
  }
}
