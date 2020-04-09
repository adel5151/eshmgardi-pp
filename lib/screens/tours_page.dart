import 'package:flutter/material.dart';
import 'package:qeshmi/common/constants.dart';
import 'package:qeshmi/screens/home_page.dart';

class ToursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: kAppName,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: BottomNavigationGlobal(),
      ),
    );
  }
}
