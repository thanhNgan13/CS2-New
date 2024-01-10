import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with WidgetsBindingObserver {
  bool isBottomSheetOpen = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final mediaQueryData = MediaQuery.of(context);
    if (mediaQueryData.orientation == Orientation.landscape &&
        isBottomSheetOpen) {
      Navigator.of(context).pop(); // Đóng chỉ khi bottom sheet đang mở
      isBottomSheetOpen = false; // Cập nhật trạng thái
    }
  }

  displayDialogBox() {
    // Kiểm tra xem định hướng hiện tại có phải là ngang hay không
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      // Nếu thiết bị đang ở chế độ ngang, không hiển thị bottom sheet
      return;
    } else {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            child: Column(
              children: [
                // logo
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red, // Màu của đường viền
                        width: 3.0, // Độ dày của đường viền
                      ),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://play-lh.googleusercontent.com/k4P3OMHi8g3ofGEYxSWtF95D5Wnumc9VZ_d2FScWr74-K-9XzERHFmDAVwJ3GK2P0rk',
                        fit: BoxFit.cover,
                        height: 60.0,
                        width: 60.0,
                      ),
                    ),
                  ),
                ),

                // content
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    'Opera News',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                customButton('https://img.icons8.com/color/452/google-logo.png',
                    'Sign in with Google'),
                customButton(
                    'https://img.icons8.com/color/452/facebook-new.png',
                    'Sign in with Facebook'),
                customButton('https://img.icons8.com/color/452/twitter.png',
                    'Sign in with Twitter'),
              ],
            ),
          );
        },
      ).whenComplete(() {
        isBottomSheetOpen = false; // Cập nhật trạng thái khi bottom sheet đóng
      });
      isBottomSheetOpen = true; // Đánh dấu bottom sheet đang mở
    }
  }

  Padding customButton([String urlImage = '', String text = '']) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 10.0),
      child: OutlinedButton(
        onPressed: () {
          // Xử lý khi nút được nhấn
        },
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(200, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                urlImage,
                fit: BoxFit.cover,
                height: 30.0,
                width: 30.0,
              ),
              const SizedBox(width: 10), // Khoảng cách giữa hình ảnh và text
              Text(text,
                  style: const TextStyle(fontSize: 16, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Opera News',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      foregroundColor: Colors.white,
                      backgroundColor:
                          const Color.fromARGB(255, 216, 65, 18), // foreground
                    ),
                    onPressed: () {
                      displayDialogBox();
                    },
                    child: const Text('Login',
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  )
                ],
              ),
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.bookmark_border,
                    initialText: 'Favorites',
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.get_app_outlined,
                    initialText: 'Read offline',
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.history,
                    initialText: 'Read late',
                  ),
                ),
              ],
            ),
            Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.black,
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.language,
                    initialText: 'Country & Language',
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.star_outline,
                    initialText: 'Rate us',
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.mode_comment_outlined,
                    initialText: 'Feedback',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String initialText;
  const CustomButton(
      {super.key, required this.icon, required this.initialText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {
          // Xử lý sự kiện khi button được nhấn
        },
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            initialText,
            style: const TextStyle(color: Colors.black),
          ),
          trailing:
              const Icon(Icons.chevron_right), // Icon mũi tên chỉ sang phải
        ),
      ),
    );
  }
}
