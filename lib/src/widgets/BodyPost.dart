import 'package:flutter/material.dart';

import '../models/Post.dart';

class BodyPost extends StatelessWidget {
  const BodyPost({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.grey,
          size: 25,
        ),
        actions: const [
          Icon(
            Icons.menu_book_rounded,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.text_fields_rounded,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                post.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.content[0],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[1],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[2],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      post.images[0],
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[3],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[4],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[5],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      post.images[1],
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[6],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    Image.network(
                      post.images[2],
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      post.content[7],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.share),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(140, 35)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blueGrey.withOpacity(0.1)),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_note_rounded,
                      color: Colors.blueGrey[400],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Comment',
                      style: TextStyle(color: Colors.blueGrey[400]),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(bottom: 0),
              icon: Transform.scale(
                scaleX: -1,
                child: const Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(bottom: 0),
              icon: const Icon(
                Icons.thumb_up_off_alt_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(bottom: 0),
              icon: const Icon(
                Icons.thumb_down_alt_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 60,
            ),
          ],
        ),
      ),
    );
  }
}
