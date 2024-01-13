import 'package:flutter/material.dart';
import 'package:opera_news/src/views/pages/videos_page.dart';

import 'src/models/BottomNavItem.dart';
import 'src/views/pages/reels_page.dart';
import 'src/views/pages/user.dart';
import 'src/widgets/AppBar.dart';

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
    const VideosPage(),
    ReelsPage(),
    const UserPage()
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

  void _updateSelectedCategory(String category) {
    setState(() {
      SelectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: (_selectedIndex == 0 || _selectedIndex == 1)
            ? CustomAppBar(
                categories: categories,
                selectedCategory: SelectedCategory,
                updateSelectedCategory: _updateSelectedCategory,
              )
            : null,
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
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
