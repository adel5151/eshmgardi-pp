import 'package:flutter/material.dart';
import 'package:qeshmi/common/reusable_card.dart';
import 'package:qeshmi/common/custom_title_for_pages.dart';

class ToursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: CustomTitleForPages(
            titleName: 'جزیره قشم و هرمز',
            subTitleName: 'تورهای گشت',
          ),
        ),
        Expanded(
            flex: 3,
            child: GridView.count(
              childAspectRatio: 2 / 3,
              crossAxisCount: 2,
              padding: EdgeInsets.all(10.0),
              mainAxisSpacing: 35.0,
              crossAxisSpacing: 15.0,
              children: <Widget>[
                ImageTextOverlay(
                  tourName: 'ویژه قشم',
                  tourImage: 'assets/images/starvalley.jpg',
                ),
                ImageTextOverlay(
                  tourName: 'جزیره هرمز',
                  tourImage: 'assets/images/hormoz.jpg',
                ),
                ImageTextOverlay(
                  tourName: 'جزیره هنگام',
                  tourImage: 'assets/images/hengam.jpg',
                ),
                ImageTextOverlay(
                  tourName: 'نیم روزی قشم',
                  tourImage: 'assets/images/starvalley2.jpg',
                ),
              ],
            ))
      ],
    );
  }
}
