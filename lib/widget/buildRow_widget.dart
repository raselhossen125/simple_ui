// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class BuildRow extends StatelessWidget {
  IconData icon;
  String title;
  String subTitle;

  BuildRow(this.icon, this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
