import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Widget'),
      ),
      body: const Center(
          // child: WebView(
          //   initialUrl: 'https://flutter.dev',
          //   javascriptMode: JavascriptMode.unrestricted,
          // ),
          ),
    );
  }
}
