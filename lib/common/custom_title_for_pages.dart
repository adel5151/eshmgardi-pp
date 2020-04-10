import 'package:qeshmi/common/constants.dart';
import 'package:flutter/material.dart';

class CustomTitleForPages extends StatelessWidget {
  CustomTitleForPages({@required this.titleName, @required this.subTitleName});

  final String titleName;
  final String subTitleName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          subTitleName,
          textAlign: TextAlign.center,
          style: kSubtitleTextStyle,
        ),
        SizedBox(height: 15.0),
        Text(
          titleName,
          textAlign: TextAlign.center,
          style: kTitleTextStyle,
        ),
      ],
    );
  }
}
