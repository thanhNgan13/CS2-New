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
            'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC11c2Vhc3Q1LnVzLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYwOTA0NGc0MDAwMGNpMjJiamJjNzd1MTViajRqbWlnJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD02NjUzNTQyODdjZTQ0NTVkYmFmZmNjNjUzZmQ3Y2E5YSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzI0Mjk1NzEwMTMzOTc3NDIxNC5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.T1Q4zOMV-zCtgOSA9KqsbAOgsU7cbBe7_CUsxrOjhWM&dl=1');
  }
}
