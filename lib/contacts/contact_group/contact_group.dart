import 'package:flutter/material.dart';
import './contact.dart';

class ContactGroup extends StatelessWidget {
  @override
  Container build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Card(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Contact();
          },
        ),
      ),
    );
  }
}
