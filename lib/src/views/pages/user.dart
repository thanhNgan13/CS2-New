import 'package:flutter/material.dart';

import '../../widgets/CustomButton.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with WidgetsBindingObserver {
  // Lấy chiều dài và chiều cao của màn hình

  bool isBottomSheetOpen = false;
  int _selectedLanguageIndex = -1; // Ban đầu không ngôn ngữ nào được chọn

  // Danh sách các ngôn ngữ và quốc gia
  final List<Map<String, dynamic>> _languages = [
    {
      'name': 'Vietnam - Vietnamese',
      'flag': 'https://img.icons8.com/color/452/vietnam.png',
    },
    {
      'name': 'United States - English',
      'flag': 'https://img.icons8.com/color/452/vietnam.png',
    },
    // Thêm các ngôn ngữ khác tương tự
  ];

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
    if (mediaQueryData.orientation == Orientation.portrait &&
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
      isBottomSheetOpen = true; // Đánh dấu bottom sheet đang mở
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
                      child: Image.asset(
                        'assets/images/opera-news-logo.png',
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
                // button
                ButtonLogin(
                    urlImage: 'assets/images/google-logo.png',
                    text: 'Sign in with Google',
                    onPressed: () {}),
                ButtonLogin(
                    urlImage: 'assets/images/facebook-logo.png',
                    text: 'Sign in with Facebook',
                    onPressed: () {}),
                ButtonLogin(
                    urlImage: 'assets/images/twitter-logo.png',
                    text: 'Sign in with Twitter',
                    onPressed: () {}),
              ],
            ),
          );
        },
      ).whenComplete(() {
        isBottomSheetOpen = false; // Đánh dấu bottom sheet đã đóng
      });
    }
  }

  void displayShowLanguage1() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
            ),
            width: screenWidth * 0.8,
            height: screenHeight * 0.5,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Language & Country',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _languages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _selectedLanguageIndex = index;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                _languages[index]['flag'],
                                fit: BoxFit.cover,
                                height: 30.0,
                                width: 30.0,
                              ),
                              Text(
                                _languages[index]['name'],
                                style: TextStyle(fontSize: 14),
                              ),
                              if (_selectedLanguageIndex == index)
                                Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 24,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Popup chọn ngôn ngữ và quốc gia
  displayShowLanguage() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
            ),
            width: screenWidth,
            height: screenHeight * 0.5,
            child: SingleChildScrollView(
              child: Column(children: [
                // Vietnam
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Language & Country',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.network(
                            'https://img.icons8.com/color/452/vietnam.png',
                            fit: BoxFit.cover,
                            height: 30.0,
                            width: 30.0,
                          ),
                          const SizedBox(width: 1),
                          const Text(
                            'Vietnam',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          const SizedBox(width: 50),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.black,
                                size: 20,
                              )
                            ],
                          ),
                        ],
                      )),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }

  // Hàm tạo button
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
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.bookmark_border,
                    initialText: 'Favorites',
                    type: buttonType.favorites,
                    onPressed: () {
                      // Xử lý khi nút được nhấn
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.get_app_outlined,
                    initialText: 'Read offline',
                    type: buttonType.readOffline,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.history,
                    initialText: 'Read late',
                    type: buttonType.readLate,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.black,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.language,
                    initialText: 'Country & Language',
                    type: buttonType.countryLanguage,
                    onPressed: () {
                      displayShowLanguage();
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.star_outline,
                    initialText: 'Rate us',
                    type: buttonType.rateUs,
                    onPressed: () {
                      // Xử lý khi nút được nhấn
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.mode_comment_outlined,
                    initialText: 'Feedback',
                    type: buttonType.feedback,
                    onPressed: () {},
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
