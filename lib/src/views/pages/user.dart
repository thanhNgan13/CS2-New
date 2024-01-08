import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListButtonForUser extends StatelessWidget {
  const ListButtonForUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('ListButtonForUser'),
    );
  }

  Container boxContainer(String text, Alignment alignment,
      [bool isCricle = false]) {
    return Container(
      alignment: alignment,
      decoration: BoxDecoration(
        color: isCricle ? const Color.fromARGB(253, 46, 56, 246) : Colors.green,
        borderRadius: BorderRadius.circular(isCricle ? 100 : 0),
      ),
      width: 100,
      height: 100,
      child: Text(
        text,
        style: const TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "Button Pressed", // message
      toastLength: Toast.LENGTH_SHORT, // duration
      gravity: ToastGravity.BOTTOM, // position
      timeInSecForIosWeb: 1, // duration for iOS
    );
  }
}
