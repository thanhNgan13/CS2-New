import 'package:flutter/material.dart';

import 'TemplateVideoShort.dart';

class MyVideo2 extends StatelessWidget {
  const MyVideo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TemplateShort(
        nameAccount: '@pttt',
        caption: 'the gioi di dong',
        hashTag: '#tin_tuc',
        like: '1.2M',
        comment: '1.2K',
        share: '2.6K');
  }
}
