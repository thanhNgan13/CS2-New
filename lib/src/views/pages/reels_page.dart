import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'shorts/MyVideo1.dart';
import 'shorts/MyVideo2.dart';
import 'shorts/MyVideo3.dart';

class ReelsPage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyVideo1(),
          MyVideo2(),
          MyVideo3(),
        ],
      ),
    );
  }
}
