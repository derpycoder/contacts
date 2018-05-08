import 'package:flutter/material.dart';

import './header/header.dart';
import './sidebar/sidebar.dart';

void main() => runApp(MaterialApp(
      title: 'Contacts 2.0',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        accentColor: Colors.pinkAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
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
            Center(child: Text("Home Page")),
            Center(child: Text("Favorites")),
            Center(child: Text("Contact Cards")),
            Center(child: Text("Groups")),
            Center(child: Text("Archives")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print("Yay"),
        ),
        drawer: Sidebar());
  }
}
