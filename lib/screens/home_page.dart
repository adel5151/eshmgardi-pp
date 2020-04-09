import 'package:flutter/material.dart';
import 'package:qeshmi/common/constants.dart';
import 'package:qeshmi/screens/blog_page.dart';
import 'package:qeshmi/common/reusable_icon_box.dart';
import 'package:qeshmi/screens/listings_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset('assets/images/qeshm.jpg'),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BlogPage()),
                          );
                        });
                      },
                      child: ReusableIconBox(
                        image: Image.asset(
                          'assets/images/blog.png',
                          scale: 5.0,
                        ),
                        title: 'راهنمای سفر',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableIconBox(
                      image: Image.asset(
                        'assets/images/tour.png',
                        scale: 5.0,
                      ),
                      title: 'تور گشت',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableIconBox(
                      image: Image.asset(
                        'assets/images/greek.png',
                        scale: 5.0,
                      ),
                      title: 'جاهای دیدنی',
                    ),
                  ),
                  Expanded(
                    child: ReusableIconBox(
                      image: Image.asset(
                        'assets/images/architecture.png',
                        scale: 5.0,
                      ),
                      title: 'مراکز خرید',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationGlobal extends StatefulWidget {
  @override
  _BottomNavigationGlobalState createState() => _BottomNavigationGlobalState();
}

class _BottomNavigationGlobalState extends State<BottomNavigationGlobal> {
  int _currentIndex = 0;

  final screens = [
    Text('home'),
    Text('Gasht'),
    Text('Blog'),
    Text('More'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      onTap: (int index) {
        setState(() {
          // _currentPage = index;
          if (index != _currentIndex) {
            setState(() => _currentIndex = index);
          }
        });
      },
    );
  }
}
