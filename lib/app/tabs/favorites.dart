import 'package:flutter/material.dart';

import '../shared/contact-card.dart';

class FavoritesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: List.generate(10, (index) {
        return ContactCard();
      }),
    );
  }
}
