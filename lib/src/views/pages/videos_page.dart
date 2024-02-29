import 'package:flutter/material.dart';
import 'comments_page_for_video.dart';
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

  void onLikePressed() {
    // Thực hiện hành động khi nút like được nhấn
    print("Like button pressed");
  }

  void onDislikePressed() {
    // Thực hiện hành động khi nút dislike được nhấn
    print("Dislike button pressed");
  }

  void onCommentPressed() {
    // Thực hiện hành động khi nút comment được nhấn
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TemplateCommentVideos(),
    ));
  }

  void onSharePressed() {
    // Thực hiện hành động khi nút share được nhấn
    print("Share button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          TemplateLongVideo(
            urlVideo:
                'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxMDAyNWc1MDAwMGNtOXY0MzdvZzY1dHJzaDA5a21nJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD01OWIyZmZlNjBkY2Q0ZTAyOWI2MGY0ZmM1NmJkOTY3MyZpdGVtX2lkPTczMTk0NjAwODQ3MDkzNjI5NDYmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMbVkxTnpNelltVTJZamhsT0Raak5XVXdNVFJpWWpnME9XRXpORFkxTm1VMSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxOTQ2MDA4NDcwOTM2Mjk0Ni5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.E13YXju4IwXjql8YY5UjYAtR_vR0I5TJOKvOsn6fKU0&dl=1',
            title: 'Video 1',
            onPressedLike: onLikePressed,
            onPressedDislike: onDislikePressed,
            onPressedComments: onCommentPressed,
            onPressedShare: onSharePressed,
          ),
          TemplateLongVideo(
            urlVideo:
                'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxMDAyNWc1MDAwMGNtOXY0MzdvZzY1dHJzaDA5a21nJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD01OWIyZmZlNjBkY2Q0ZTAyOWI2MGY0ZmM1NmJkOTY3MyZpdGVtX2lkPTczMTk0NjAwODQ3MDkzNjI5NDYmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMbVkxTnpNelltVTJZamhsT0Raak5XVXdNVFJpWWpnME9XRXpORFkxTm1VMSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxOTQ2MDA4NDcwOTM2Mjk0Ni5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.E13YXju4IwXjql8YY5UjYAtR_vR0I5TJOKvOsn6fKU0&dl=1',
            title: 'Video 2',
            onPressedLike: onLikePressed,
            onPressedDislike: onDislikePressed,
            onPressedComments: onCommentPressed,
            onPressedShare: onSharePressed,
          ),
          TemplateLongVideo(
              urlVideo:
                  'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxMDAyNWc1MDAwMGNtOXY0MzdvZzY1dHJzaDA5a21nJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD01OWIyZmZlNjBkY2Q0ZTAyOWI2MGY0ZmM1NmJkOTY3MyZpdGVtX2lkPTczMTk0NjAwODQ3MDkzNjI5NDYmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMbVkxTnpNelltVTJZamhsT0Raak5XVXdNVFJpWWpnME9XRXpORFkxTm1VMSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxOTQ2MDA4NDcwOTM2Mjk0Ni5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.E13YXju4IwXjql8YY5UjYAtR_vR0I5TJOKvOsn6fKU0&dl=1',
              title: 'Video 3',
              onPressedLike: onLikePressed,
              onPressedDislike: onDislikePressed,
              onPressedComments: onCommentPressed,
              onPressedShare: onSharePressed),
          TemplateLongVideo(
            urlVideo:
                'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxMDAyNWc1MDAwMGNtOXY0MzdvZzY1dHJzaDA5a21nJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD01OWIyZmZlNjBkY2Q0ZTAyOWI2MGY0ZmM1NmJkOTY3MyZpdGVtX2lkPTczMTk0NjAwODQ3MDkzNjI5NDYmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMbVkxTnpNelltVTJZamhsT0Raak5XVXdNVFJpWWpnME9XRXpORFkxTm1VMSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxOTQ2MDA4NDcwOTM2Mjk0Ni5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.E13YXju4IwXjql8YY5UjYAtR_vR0I5TJOKvOsn6fKU0&dl=1',
            title: 'Video 4',
            onPressedLike: onLikePressed,
            onPressedDislike: onDislikePressed,
            onPressedComments: onCommentPressed,
            onPressedShare: onSharePressed,
          ),
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
