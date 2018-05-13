import 'package:flutter/material.dart';
import './contact-card.dart';

class ContactBelt extends StatelessWidget {
  @override
  Container build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Card(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.5),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ContactCard(true);
          },
        ),
      ),
    );
  }
}
