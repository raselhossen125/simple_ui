// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  double height;
  double width;
  IconData icon;
  String title;
  Color color;
  Color bgColor;
  VoidCallback? onPreased;

  BuildContainer(
      {this.height = 85,
      this.width = 100,
      required this.icon,
      required this.title,
      this.color = Colors.white60,
      this.bgColor = Colors.blue,
      this.onPreased,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPreased,
      child: Container(
        height: height,
        width: width,
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: color,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                title,
                style: TextStyle(color: color, letterSpacing: 0.7),
              )
            ],
          ),
        ),
      ),
    );
  }
}
