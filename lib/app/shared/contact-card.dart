import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import './values/colors.dart';

class ContactCard extends StatelessWidget {
  @override
  Container build(BuildContext context) {
    final wordPair = WordPair.random();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
            backgroundColor: ripeGreen,
            backgroundImage:
                AssetImage('assets/images/placeholders/green_male_avatar.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
          ),
          Text(wordPair.asPascalCase),
        ],
      ),
    );
  }
}
