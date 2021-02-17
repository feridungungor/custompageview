
import 'package:flutter/material.dart';
import 'package:flutter_netflix_menu/components/build_appbar.dart';
import 'package:flutter_netflix_menu/functions/dot_functions.dart';
import 'package:flutter_netflix_menu/functions/new_selector.dart';
import 'package:flutter_netflix_menu/model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Container(
            height: 280.0,
            width: double.infinity,
            child: PageView.builder(
              onPageChanged: (currentpage) {
                setState(
                      () {
                    currentIndex = currentpage;
                  },
                );
              },
              controller: _pageController,
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return newSelector(index,_pageController);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: creatDot(image.length, currentIndex),
          )
        ],
      ),
    );
  }


  List<Widget> creatDot(int dotCount, selectedDotIndex) {
    List<Widget> dotList = List<Widget>();
    for (int i = 0; i < dotCount; i++) {
      if (i == selectedDotIndex) {
        setState(() {
          dotList.add(dotbuilder(true));
        });
      } else {
        setState(() {
          dotList.add(dotbuilder(false));
        });
      }
    }
    return dotList;
  }
}
