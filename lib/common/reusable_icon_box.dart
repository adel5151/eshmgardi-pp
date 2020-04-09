import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableIconBox extends StatelessWidget {
  ReusableIconBox({@required this.image, @required this.title});

  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        image,
        SizedBox(height: 10.0),
        Text(
          title,
          style: kTextStyleHomePage,
        ),
      ],
    );
  }
}
