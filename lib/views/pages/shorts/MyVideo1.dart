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
            'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYwZjAyNWdjMDAwMGM5ODI5aHJjNzd1N21kYXVkZmMwJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD05ZWIwZDNhYTdmMmQ0ZGM5OWI5ZjljOWRmODdiMDhkZiIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzA4NDIwMjk4MzM4MjA2MDMxNS5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.eRFGsXnsDjMiTZpChaDoQqMAA3aWLAT4fY1oN4aiQ2U&dl=1');
  }
}
