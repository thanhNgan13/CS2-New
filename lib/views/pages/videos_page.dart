import 'package:flutter/material.dart';
import 'videos/Long_Video.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  // ignore: unused_field

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: []),
      ),
    );
  }
}

String truncateWithEllipsis(String text, int maxLength) {
  return (text.length <= maxLength)
      ? text
      : '${text.substring(0, maxLength)}...';
}
