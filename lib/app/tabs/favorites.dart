import 'package:flutter/material.dart';

import '../shared/contact-card.dart';

class FavoritesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 7.0 / 9,
      children: List.generate(10, (index) {
        return ContactCard();
      }),
    );
  }
}
