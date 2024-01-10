import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../utils/button.dart';

class ShortVideoTemplate extends StatefulWidget {
  final String nameAccount;
  final String caption;
  final String hashTag;
  final String like;
  final String comment;
  final String share;
  final String urlVideo;
  const ShortVideoTemplate(
      {super.key,
      required this.nameAccount,
      required this.caption,
      required this.hashTag,
      required this.like,
      required this.comment,
      required this.share,
      required this.urlVideo});
  @override
  State<ShortVideoTemplate> createState() => _ShortVideoTemplateState();
}

class _ShortVideoTemplateState extends State<ShortVideoTemplate> {
  late VideoPlayerController _controller;
  // ignore: unused_field
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.urlVideo))
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      })
      ..setLooping(true);
  }

  void _playPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Video
        Positioned.fill(
            child: GestureDetector(
          onTap: _playPause,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : const Center(child: CircularProgressIndicator()),
        )),
        // user name and capption video
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: const Alignment(-1, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(widget.nameAccount,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: widget.caption,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: widget.hashTag,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ]))
              ],
            ),
          ),
        ),
        // button like, comment, share
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                MyButton(
                  icon: Icons.favorite,
                  initialText: widget.like,
                  type: MyButtonEnum.like,
                ),
                MyButton(
                  icon: Icons.comment,
                  initialText: widget.comment,
                  type: MyButtonEnum.comment,
                ),
                MyButton(
                  icon: Icons.share,
                  initialText: widget.share,
                  type: MyButtonEnum.share,
                ),
              ]),
            )),
        // video
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ],
    ));
  }
}
