import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String text;
  MyButton({this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(children: [
          Icon(
            icon,
            size: 40,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          )
        ]));
  }
}
