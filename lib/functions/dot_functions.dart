import 'package:flutter/material.dart';

Widget dotbuilder(bool selectedDot) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        height: 6,
        width: selectedDot ? 20 : 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selectedDot ? Color(0XFF203260) : Colors.grey,
        ),
      ),
    ),
  );
}
