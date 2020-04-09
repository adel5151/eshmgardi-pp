import 'package:flutter/material.dart';
import 'package:qeshmi/common/reusable_icon_box.dart';
import 'package:qeshmi/common/constants.dart';

class ToursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'تورهای گشت',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'iranyekan',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'جزیره قشم و هرمز',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'iranyekan',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
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
