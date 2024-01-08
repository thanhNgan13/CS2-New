import 'package:flutter/material.dart';
import 'package:opera_news/src/views/pages/shorts/TemplateVideoShort.dart';

class MyVideo1 extends StatelessWidget {
  const MyVideo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TemplateShort(
        nameAccount: '@ptn',
        caption: 'diem tin tuc moi nhat',
        hashTag: '#tin_tuc',
        like: '1.2M',
        comment: '1.2K',
        share: '2.6K');
  }
}
