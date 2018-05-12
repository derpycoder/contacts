import 'package:flutter/material.dart';

import '../shared/values/colors.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.account_circle),
            pinned: true,
            expandedHeight: 250.0,
            backgroundColor: ripePink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('John Doe'),
            ),
          ),
        ],
      ),
    );
  }
}
