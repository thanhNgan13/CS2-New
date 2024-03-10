import 'package:flutter/material.dart';
import 'package:opera_news/views/pages/shorts/Short_Video.dart';

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
            'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC11c2Vhc3Q1LnVzLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYwZjAyNWdjMDAwMGNnbXA5bXJjNzd1MDlhM2RoczMwJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD03NWU1OWMxN2M1MGI0YzRlOTNiMzI0OTdjMzk5ZjMxOSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzIxODU4OTY0NTQwNjIyNzczOC5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.DEQWv1xl3nEu_vYuMRJqUCXzqMOuXp4k3-TZAFCXs84&dl=1');
  }
}
