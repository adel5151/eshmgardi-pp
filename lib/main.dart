import 'package:flutter/material.dart';
import 'package:qeshmi/bottom_navigation_bar.dart';

void main() => runApp(MyAppQeshm());

class MyAppQeshm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationGlobal(),
    );
  }
}
