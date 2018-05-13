import 'package:flutter/material.dart';

import '../shared/values/colors.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rawGreen,
        title: Text("Profile"),
      ),
      body: Center(child: Text("Profile")),
    );
  }
}
