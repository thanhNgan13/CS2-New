import 'package:flutter/material.dart';

import 'src/models/BottomNavItem.dart';
import 'src/views/pages/reels_page.dart';
import 'src/views/pages/user.dart';
import 'src/widgets/CategoryWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Opera News',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<String> categories = [
    'Follow',
    'For you',
    'AWW',
    'News',
    'Comedy',
    'Entertainment',
    'Emotion',
    'Sports',
    'Tech',
    'Car',
  ];

  String SelectedCategory = 'For you';

  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Search')),
    ReelsPage(),
    UserPage()
  ];

  final List<BottomNavItem> bottomNavItems = [
    BottomNavItem(
        icon: const Icon(
          Icons.refresh,
        ),
        label: 'Refresh'),
    BottomNavItem(icon: const Icon(Icons.play_circle_outline), label: 'Video'),
    BottomNavItem(icon: const Icon(Icons.local_movies), label: 'Clips'),
    BottomNavItem(icon: const Icon(Icons.person_outline), label: 'User'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.black,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const FlutterLogo(
                      size: 40,
                    ),
                    InkWell(
                      onTap: () {
                        _showSearchModal(context);
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
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var category in categories)
                              CategoryWidget(
                                categoryName: category,
                                isSelected: category == SelectedCategory,
                                onTap: () {
                                  setState(() {
                                    SelectedCategory = category;
                                  });
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.format_list_bulleted,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          unselectedFontSize: 15,
          selectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            for (var i = 0; i < bottomNavItems.length; i++)
              if (i == 0 && _selectedIndex != 0)
                const BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_rounded),
                  label: 'Home',
                )
              else
                BottomNavigationBarItem(
                  icon: bottomNavItems.elementAt(i).icon,
                  label: bottomNavItems.elementAt(i).label,
                )
          ],
        ));
  }
}

void _showSearchModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        initialChildSize: 1.0,
        maxChildSize: 1.0, // chiều cao tối đa của modal (toàn bộ màn hình)
        minChildSize: 0.1, // chiều cao tối thiểu của modal (10% của màn hình)
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 100,
                  color: Colors.red,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    },
  );
}
