import 'package:flutter/material.dart';

import '../../widgets/MyPost.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPost(),
            MyPost(),
            MyPost(),
            MyPost(),
          ],
        ),
      ),
    );
  }
}
