import 'package:flutter/material.dart';
import 'package:opera_news/src/views/pages/shorts/Short_Video.dart';

class MyVideo3 extends StatelessWidget {
  const MyVideo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShortVideoTemplate(
        nameAccount: '@hqts',
        caption: 'diem tin tuc moi nhat',
        hashTag: '#tin_tuc',
        like: '1.2M',
        comment: '1.2K',
        share: '2.6K',
        urlVideo:
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4');
  }
}
