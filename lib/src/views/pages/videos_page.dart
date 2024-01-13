import 'package:flutter/material.dart';
import 'videos/Long_Video.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  // ignore: unused_field

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          TemplateLongVideo(
              urlVideo:
                  'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxNDAyNWc1MDAwMGNtMm1pdm5vZzY1aTl2bnVsc2VnJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD00ZjdkNWIzZGFjMzc0MWQ4OWE0ZTBiZjIyMDMxMmMwZCZpdGVtX2lkPTczMTUzNjk2NzkxNzI3MzQyMDkmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMakptWlRFeFlXTmxZV1F6TVdGbU1qQXlOakZrTkRVMU1tRTFPV014WWpRNCIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxNTM2OTY3OTE3MjczNDIwOS5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.j5iMn9wyEDw1MwVT5ze7HdKrP6xWWDRYvw7R4dp5KNw&dl=1',
              title: 'Video 1'),
          TemplateLongVideo(
              urlVideo:
                  'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxNDAyNWc1MDAwMGNtYzE3bG5vZzY1ajBvaXZibWYwJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD0yNmI3ODI3OTdmYzM0NDBmYmZmNDE4YTU1ZDA5OWJiMSZpdGVtX2lkPTczMjA2MjM2ODYxNDk1MDgzNTQmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMalppTldJMk5qSXpObVE1TkRjM09UQmpObVZtWkdKaVpUYzFZV05sWlRBeiIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMyMDYyMzY4NjE0OTUwODM1NC5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.NzJtTSmyUPgiUtobeFGwRZQKj29heBdrCqNpEK552D8&dl=1',
              title: 'Video 2'),
          TemplateLongVideo(
              urlVideo:
                  'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxMDAyNWc1MDAwMGNtOXY0MzdvZzY1dHJzaDA5a21nJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD01OWIyZmZlNjBkY2Q0ZTAyOWI2MGY0ZmM1NmJkOTY3MyZpdGVtX2lkPTczMTk0NjAwODQ3MDkzNjI5NDYmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMbVkxTnpNelltVTJZamhsT0Raak5XVXdNVFJpWWpnME9XRXpORFkxTm1VMSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxOTQ2MDA4NDcwOTM2Mjk0Ni5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.E13YXju4IwXjql8YY5UjYAtR_vR0I5TJOKvOsn6fKU0&dl=1',
              title: 'Video 3'),
        ]),
      ),
    );
  }
}

String truncateWithEllipsis(String text, int maxLength) {
  return (text.length <= maxLength)
      ? text
      : '${text.substring(0, maxLength)}...';
}
