import 'package:flutter/material.dart';

import 'Short_Video.dart';

class MyVideo1 extends StatelessWidget {
  const MyVideo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShortVideoTemplate(
        nameAccount: '@ptn',
        caption: 'diem tin tuc moi nhat',
        hashTag: '#tin_tuc',
        like: '0',
        comment: '1.2K',
        share: '2.6K',
        urlVideo:
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4');
  }
}
