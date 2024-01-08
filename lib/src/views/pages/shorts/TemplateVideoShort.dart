import 'package:flutter/material.dart';

import '../../../../utils/button.dart';

class TemplateShort extends StatelessWidget {
  final String nameAccount;
  final String caption;
  final String hashTag;
  final String like;
  final String comment;
  final String share;

  const TemplateShort(
      {super.key,
      required this.nameAccount,
      required this.caption,
      required this.hashTag,
      required this.like,
      required this.comment,
      required this.share});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // user name and capption video
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: const Alignment(-1, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(nameAccount,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: caption,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: hashTag,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ]))
              ],
            ),
          ),
        ),
        // button like, comment, share
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                MyButton(
                  icon: Icons.favorite,
                  text: like,
                ),
                MyButton(
                  icon: Icons.comment,
                  text: comment,
                ),
                MyButton(
                  icon: Icons.share,
                  text: share,
                ),
              ]),
            ))
      ],
    ));
  }
}
