import 'package:flutter/material.dart';
import 'package:qeshmi/common/constants.dart';

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
        // bottomNavigationBar: BottomNavigationGlobal(),
      ),
    );
  }
}
