import 'package:flutter/material.dart';

import './home-page.dart';
import './shared/values/colors.dart';

class ContactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts 2.0',
      theme: _buildGuavaTheme(context),
      home: HomePage(),
    );
  }
}

ThemeData _buildGuavaTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: charcoalGrey,
    accentColor: ripePink,
  );
}
