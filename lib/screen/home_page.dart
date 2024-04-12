import 'package:flutter/material.dart';
import 'package:my_calmsoul/screen/home_page_calmsoul.dart';
import 'package:my_calmsoul/screen/news_screen.dart';
import 'package:my_calmsoul/screen/picture.dart';
import 'package:my_calmsoul/screen/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // set initial screen index here

  final List<Widget> _screens = [
    const DashBoard(),
    const PictureScreen(), // Konstruktor tidak diperlukan di sini
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    "Home",
    "Action",
    "Video",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(242, 255, 203, 140),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Latihan API'),
              onTap: () {
                _onItemTapped(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Latihan CRUD'),
              onTap: () {
                // Action when Item 2 is tapped
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: Colors.black,
            ),
            label: 'Action',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
              color: Colors.black,
            ),
            label: 'Video',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 62, 139, 255),
        onTap: _onItemTapped, // add onTap callback
      ),
    );
  }
}
