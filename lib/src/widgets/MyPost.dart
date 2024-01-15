import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://i1-thethao.vnecdn.net/2024/01/14/343937T-highres-jpeg-6405-1705207448.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=D4RoWN5RQfJKccjTHb0pdg',
          height: 250,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-6/336272922_269688702051800_3605603259970413830_n.png?_nc_cat=1&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeG32cWS97tqpSE2eFJFBQ7Q_trxT86EzPj-2vFPzoTM-Kw9cqIjBiB6RY-YuIThqj462XmaNDKeubvHvlVDoYFA&_nc_ohc=XZUDx43O4mQAX_FRBNS&_nc_ht=scontent.fdad3-1.fna&oh=00_AfCLPHWFlwyVL4bx546mUA9h6_Ak_V1MUfpPw2-6heOamw&oe=65AB4D9B',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'VNExpress',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '22h',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hàng công Man Utd tệ thế nào ở Ngoại hạng Anh',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '155',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.grey,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.grey,
                        size: 5,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '112',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.comment_outlined,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 25,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
