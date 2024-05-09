// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppWIdeProgreesBar extends StatelessWidget {
  Color color;
  double part;

  AppWIdeProgreesBar({
    super.key,
    required this.color,
    required this.part,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 10,
          // rgba(195, 89, 29, 0.3)
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(195, 89, 29, 0.3),
          ),
          width: double.infinity,
        ),
        Container(
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(195, 89, 29, 1),
          ),
          width: 30,
        ),
      ],
    );
  }
}
