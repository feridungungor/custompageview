import 'package:flutter/material.dart';
import 'package:flutter_netflix_menu/model.dart';

newSelector(int index,_pageController) {
  return AnimatedBuilder(
    animation: _pageController,
    builder: (BuildContext context, Widget widget) {
      double value = 1;
      if (_pageController.position.haveDimensions) {
        value = _pageController.page - index;
        value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
      }
      return Center(
        child: SizedBox(
          height: Curves.easeInOut.transform(value) * 270.0,
          width: Curves.easeInOut.transform(value) * 400.0,
          child: widget,
        ),
      );
    },
    child: Stack(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 10.0),
              ],
            ),
            child: Center(
              child: Hero(
                tag: image[index].imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage(image[index].imageUrl),
                    height: 220.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 30.0,
          bottom: 40.0,
          child: Container(
            width: 250,
            child: Text(
              "Haber",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ),
  );
}