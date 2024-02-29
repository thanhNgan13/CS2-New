import 'package:flutter/material.dart';
import 'package:opera_news/src/widgets/VideoOverlay.dart';
import 'package:video_player/video_player.dart';

class TemplateCommentVideos extends StatefulWidget {
  const TemplateCommentVideos({super.key});

  @override
  State<TemplateCommentVideos> createState() => _TemplateCommentVideosState();
}

class _TemplateCommentVideosState extends State<TemplateCommentVideos> {
  late VideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: Column(
        children: [VideoOverlay(controller: controller, ifFullScreen: false)],
      ),
    );
  }
}
