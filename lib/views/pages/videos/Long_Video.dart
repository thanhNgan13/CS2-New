import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../widgets/CustomButton.dart';
import '../../../widgets/VideoOverlay.dart';
import '../videos_page.dart';

class TemplateLongVideo extends StatefulWidget {
  final String urlVideo;
  final String title;
  const TemplateLongVideo(
      {super.key, required this.urlVideo, required this.title});

  @override
  State<TemplateLongVideo> createState() => _TemplateLongVideoState();
}

class _TemplateLongVideoState extends State<TemplateLongVideo> {
  late VideoPlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(widget.urlVideo))
      ..initialize().then((_) {
        controller.pause();
        setState(() {});
      })
      ..setLooping(true);
  }

  @override
  void dispose() {
    controller.pause();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  color: Colors.black,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                ),
                Positioned.fill(
                    child: VideoOverlay(
                  controller: controller,
                  ifFullScreen: false,
                  title: widget.title,
                )),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset('assets/images/avatar.jpg',
                          width: 25, height: 25, fit: BoxFit.cover),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          truncateWithEllipsis('PhanThanhNgan22222', 8),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Follow',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        )),
                    const Spacer(),
                    ButtonInVideosInteract(
                        icon: Icons.thumb_up_off_alt,
                        initialText: '1',
                        onPressed: () {}),
                    const SizedBox(width: 5),
                    // dislike button
                    ButtonInVideosInteract(
                        icon: Icons.thumb_down_off_alt,
                        initialText: '1',
                        onPressed: () {}),
                    const SizedBox(width: 5),
                    // comment button
                    ButtonInVideosInteract(
                        icon: Icons.chat_bubble_outline,
                        initialText: '1',
                        onPressed: () {}),
                    const SizedBox(width: 5),
                    // share button
                    ButtonInVideosInteract(icon: Icons.share, onPressed: () {}),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
