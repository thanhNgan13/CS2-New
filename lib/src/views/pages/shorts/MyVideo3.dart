import 'package:flutter/material.dart';

import 'TemplateVideoShort.dart';

class MyVideo3 extends StatelessWidget {
  const MyVideo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TemplateShort(
        nameAccount: '@hqts',
        caption: 'diem tin tuc moi nhat',
        hashTag: '#tin_tuc',
        like: '1.2M',
        comment: '1.2K',
        share: '2.6K');
  }
}
