import 'package:flutter/material.dart';

class OptionNews extends StatelessWidget {
  const OptionNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'News Options',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.grey,
          size: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Country & language',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0), // Đặt giá trị radius là 0
                          ),
                          child: Container(
                            height: 520,
                            padding: const EdgeInsets.all(8),
                            color: Colors.black,
                            child: Column(
                              children: [
                                const Text(
                                  'Country & Language',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                    child: SizedBox(
                                  child: ListView(
                                    children: const [
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                      Item(),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  child: Item(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.add_photo_alternate_outlined,
          size: 30,
          color: Colors.red,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            'Viet Nam',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.red,
          size: 35,
        ),
      ],
    );
  }
}
