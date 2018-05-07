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
      home: MyHomePage(),
    ));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header().build(context),
        body: Center(
          child: Text("Soon to be filled with Contacts!"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
        drawer: Sidebar());
  }
}
