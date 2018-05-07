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
        length: 3,
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
            Center(child: Text("Scan QR Code")),
            Center(child: Text("Your Contacts Shared With")),
            Center(child: Text("Favorites")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print("Yay"),
        ),
        drawer: Sidebar());
  }
}
