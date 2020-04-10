import 'package:flutter/material.dart';
import 'package:qeshmi/screens/tours_page.dart';
import 'screens/blog_page.dart';
import 'screens/home_page.dart';
// import 'screens/tours_page.dart';
import 'screens/listings_page.dart';
import 'common/constants.dart';

class BottomNavigationGlobal extends StatefulWidget {
  @override
  _BottomNavigationGlobalState createState() => _BottomNavigationGlobalState();
}

int _currentIndex = 0;

final screens = [
  HomePage(),
  ToursPage(),
  BlogPage(),
  ListingsPage(),
];

class _BottomNavigationGlobalState extends State<BottomNavigationGlobal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: kAppName,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'خانه',
                style: kTextBottomNavigationBar,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.zoom_out_map,
              ),
              title: Text(
                'گشت جزیره',
                style: kTextBottomNavigationBar,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.help_outline,
              ),
              title: Text(
                'راهنما',
                style: kTextBottomNavigationBar,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              title: Text(
                'بیشتر',
                style: kTextBottomNavigationBar,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              // _currentPage = index;

              setState(() => _currentIndex = index);
            });
          },
        ),
      ),
    );
  }
}
