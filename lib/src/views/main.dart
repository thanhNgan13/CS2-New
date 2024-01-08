import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'pages/reels_page.dart';
import 'pages/user.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShortPage(),
    );
  }
}

class ShortPage extends StatefulWidget {
  const ShortPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ShortPageState createState() => _ShortPageState();
}

class _ShortPageState extends State<ShortPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Search')),
    ReelsPage(),
    const ListButtonForUser()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Short',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User',
              backgroundColor: Colors.black,
            ),
          ],
        ));
  }
}
