import 'package:flutter/material.dart';

import './home-page.dart';
import './shared/values/colors.dart';

class ContactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts 2.0',
      theme: ThemeData(
        primaryColor: charcoalGrey,
        accentColor: ripePink,
      ),
      home: HomePage(),
    );
  }
}
