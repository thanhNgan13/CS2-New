import 'package:flutter/material.dart';
import 'package:opera_news/src/views/pages/shorts/Short_Video.dart';

class MyVideo2 extends StatelessWidget {
  const MyVideo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShortVideoTemplate(
        nameAccount: '@pttt',
        caption: 'the gioi di dong',
        hashTag: '#tin_tuc',
        like: '1.2M',
        comment: '1.2K',
        share: '2.6K',
        urlVideo:
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4');
  }
}
