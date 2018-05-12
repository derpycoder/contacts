import 'package:flutter/material.dart';

import './scaffold.dart';

class ContactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts 2.0',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        accentColor: Colors.pinkAccent,
      ),
      home: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: ContactsScaffold(),
      ),
    );
  }
}
