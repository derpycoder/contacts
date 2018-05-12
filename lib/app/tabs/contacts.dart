import 'package:flutter/material.dart';

import '../shared/contacts-belt.dart';

class ContactsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
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
