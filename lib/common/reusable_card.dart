import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.tourImage, this.tourName});
  final dynamic tourImage;
  final Widget tourName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPress,

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              width: 2.0,
              child: Opacity(
                opacity: 1.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                      image: AssetImage(tourImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            tourName,
          ],
        ),
      ),
    );
  }
}

class ImageTextOverlay extends StatelessWidget {
  ImageTextOverlay({this.tourImage, this.tourName, double opacity});

  final tourImage;
  final String tourName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10.0),
            //   boxShadow: [
            //     BoxShadow(
            //       blurRadius: 5.0,
            //       color: Colors.black54,
            //       offset: Offset(0.0, 1.5),
            //     ),
            //   ],
            //   image: DecorationImage(
            //     image: AssetImage(tourImage),
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(tourImage),
                fit: BoxFit.cover,
                height: 250.0,
              ),
            ),
          ),
          Positioned.fill(
            top: 200.0,
            child: Container(
              color: Colors.black12,
            ),
          ),
          Positioned.fill(
            top: 210.0,
            child: Text(
              tourName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'iranyekan',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
