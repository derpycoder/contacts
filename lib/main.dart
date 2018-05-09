import 'package:flutter/material.dart';

import './header/header.dart';
import './sidebar/sidebar.dart';

import './contacts/contact_group/contact_group.dart';

void main() => runApp(MaterialApp(
      title: 'Contacts 2.0',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        accentColor: Colors.pinkAccent,
      ),
      home: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: MyHomePage(),
      ),
    ));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header().build(context),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            Center(child: Text("Profile")),
            Center(child: Text("Favorites")),
            Container(
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
                  SliverAppBar(
                    leading: Icon(Icons.account_circle),
                    pinned: true,
                    expandedHeight: 250.0,
                    backgroundColor: Colors.pinkAccent,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('John Doe'),
                    ),
                  ),
                  SliverFixedExtentList(
                    itemExtent: 145.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ContactGroup();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(child: Text("Groups")),
            Center(child: Text("Trash Can")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print("Yay"),
        ),
        drawer: Sidebar());
  }
}
