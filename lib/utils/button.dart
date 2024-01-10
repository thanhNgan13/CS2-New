import 'package:flutter/material.dart';

enum MyButtonEnum { like, comment, share }

class MyButton extends StatefulWidget {
  final icon;
  final String initialText;
  final MyButtonEnum type;
  const MyButton(
      {super.key, this.icon, required this.initialText, required this.type});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  late String text;
  bool isPressLike = false;

  @override
  void initState() {
    super.initState();
    text = widget.initialText;
  }

  void _onPressed() {
    setState(() {
      switch (widget.type) {
        case MyButtonEnum.like:
          if (!isPressLike) {
            isPressLike = true;
            try {
              int like = int.parse(text);
              like++;
              text = like.toString();
            } catch (e) {
              text = '1';
            }
          } else {
            isPressLike = false;
          }
          break;
        case MyButtonEnum.comment:
          text = '1.2K';
          break;
        case MyButtonEnum.share:
          text = '1.2K';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(children: [
          Icon(
            widget.icon,
            color: isPressLike ? Colors.red : Colors.white,
            size: 40,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
