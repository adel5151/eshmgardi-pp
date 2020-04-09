import 'package:flutter/material.dart';
// import 'package:qeshmi/screens/blog_page.dart';
import 'package:qeshmi/common/reusable_icon_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                      // setState(() {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => BlogPage()),
                      // );
                      // });
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
    );
  }
}
