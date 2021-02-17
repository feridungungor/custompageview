import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Image(
      image: AssetImage("assets/images/logobtk.png"),
      width: 50,
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: () => print("Menu"),
      icon: Icon(Icons.menu),
      iconSize: 40.0,
      color: Color(0XFF203260),
    ),
    actions: [
      IconButton(
        onPressed: () => print("Search"),
        icon: Icon(Icons.search),
        iconSize: 40.0,
        color: Color(0XFF203260),
      )
    ],
  );
}