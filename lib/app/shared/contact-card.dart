import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';
import 'package:transparent_image/transparent_image.dart';

class ContactCard extends StatelessWidget {
  final bool isCardFlat;

  ContactCard([this.isCardFlat = false]);

  @override
  Container build(BuildContext context) {
    final wordPair = WordPair.random();

    return Container(
      margin: EdgeInsets.all(isCardFlat ? 2.5 : 5.0),
      child: Card(
        elevation: isCardFlat ? 0.0 : 1.0,
        child: Padding(
          padding: EdgeInsets.all(isCardFlat ? 5.0 : 15.0),
          child: Column(
            children: <Widget>[
              Center(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      'https://www.abhijit-kar.com/assets/images/abhijit-kar.png',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
              ),
              Text(wordPair.asPascalCase),
            ],
          ),
        ),
      ),
    );
  }
}
