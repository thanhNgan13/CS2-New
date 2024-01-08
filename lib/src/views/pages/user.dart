import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const ListButtonForUser());
}

class ListButtonForUser extends StatelessWidget {
  const ListButtonForUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User',
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: showToast,
                      icon: const Icon(
                        // <-- Icon
                        Icons.settings,
                        size: 24.0,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
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
