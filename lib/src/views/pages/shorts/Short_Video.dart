import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../widgets/CustomButton.dart';

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

// Hàm hiển thị bottom sheet
  displayDialogBox() {
    // Kiểm tra xem định hướng hiện tại có phải là ngang hay không
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      // Nếu thiết bị đang ở chế độ ngang, không hiển thị bottom sheet
      return;
    } else {
      // isBottomSheetOpen = true; // Đánh dấu bottom sheet đang mở
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          // Override the default shape
          borderRadius: BorderRadius.circular(10), // Set border radius to zero
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Tong so binh luan
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 30.0),
                    child: Text(
                      '37.2K Commens',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Binh luan
                  templateComments(),
                  templateComments(),

                  templateComments(),
                  templateComments(),

                  templateComments(),
                  templateComments(),
                  templateComments(),
                  templateComments(),
                  templateComments(),
                ],
              ),
            ),
          );
        },
      ).whenComplete(() {
        // isBottomSheetOpen = false; // Đánh dấu bottom sheet đã đóng
      });
    }
  }

  Stack templateComments(
      {String avatar = 'assets/images/avatar.jpg',
      String name = 'PhanThanhNgan22222',
      String comment = 'This is a comment'}) {
    return Stack(
      children: [
        // Avatar
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: ClipOval(
            child: Image.asset(
              avatar,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Ten nguoi binh luan
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                comment,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Nut tra loi
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Reply',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
              // Nut like
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Like',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Container(
                  width: MediaQuery.of(context).size.width, // Screen width
                  height: MediaQuery.of(context).size.height, // Screen height
                  color: Colors.black, // Set your desired background color here
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Video
                      GestureDetector(
                        onTap: _playPause,
                        child: _controller.value.isInitialized
                            ? AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                child: VideoPlayer(_controller),
                              )
                            : const Center(child: CircularProgressIndicator()),
                      ),
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
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyButton(
                                    icon: Icons.favorite,
                                    initialText: widget.like,
                                    type: MyButtonEnum.like,
                                    onPressed: () {},
                                  ),
                                  MyButton(
                                    icon: Icons.comment,
                                    initialText: widget.comment,
                                    type: MyButtonEnum.comment,
                                    onPressed: () => displayDialogBox(),
                                  ),
                                  MyButton(
                                    icon: Icons.share,
                                    initialText: widget.share,
                                    type: MyButtonEnum.share,
                                    onPressed: () {},
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
                  ),
                )));
  }
}
