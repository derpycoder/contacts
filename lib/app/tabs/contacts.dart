import 'package:flutter/material.dart';
import '../shared/contacts-belt.dart';

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
            backgroundColor: Colors.pinkAccent,
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
