import 'package:flutter/material.dart';

import '../shared/contacts-belt.dart';
import '../shared/values/colors.dart';

class ContactsTab extends StatelessWidget {
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
          SliverFixedExtentList(
            itemExtent: 145.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ContactBelt();
              },
            ),
          ),
        ],
      ),
    );
  }
}
