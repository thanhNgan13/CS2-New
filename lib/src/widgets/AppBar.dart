// app_bar.dart
import 'package:flutter/material.dart';

import '../views/pages/option_news.dart';
import '../views/pages/searchScreen.dart';
import 'CategoryWidget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> categories;
  final String selectedCategory;
  final Function(String) updateSelectedCategory;

  final ScrollController _scrollController = ScrollController();
  final scrollOffset = 50;

  CustomAppBar({
    Key? key,
    required this.categories,
    required this.selectedCategory,
    required this.updateSelectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(
          bottom: 0,
          top: 10,
          left: 10,
          right: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Logo
                const FlutterLogo(
                  size: 40,
                ),
                //Button Modal
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'Set Your City',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.red,
                        size: 30,
                      )
                    ],
                  ),
                ),
                //Button Search
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen()));
                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //Row 2
            Row(
              //Categories
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var category in categories)
                          CategoryWidget(
                            categoryName: category,
                            isSelected: category == selectedCategory,
                            onTap: () {
                              updateSelectedCategory(category);
                              // Lấy chỉ số của danh mục được chọn
                              int selectedIndex = categories.indexOf(category);

                              // Tính toán khoảng cách cần di chuyển (có thể điều chỉnh giá trị này)
                              double scrollOffset = selectedIndex * 50;

                              // Di chuyển ScrollView sang trái
                              _scrollController.animateTo(
                                scrollOffset,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
                //Option News
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OptionNews(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.format_list_bulleted,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(110.0);
}
