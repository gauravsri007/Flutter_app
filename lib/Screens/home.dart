import 'package:flutter/material.dart';

import 'products.dart';
import 'settings.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _myIndex = 0;

  final List<String> _titles = ['Home', 'Products', 'Settings'];

  // Each tab's body lives here. IndexedStack keeps all of them alive
  // (so scroll position / state isn't lost when switching tabs).
  final List<Widget> _pages = [
    const _HomeTab(),
     ProductsTab(),
     SettingsTab(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _myIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
        title: Text(
          _titles[_myIndex],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              // TODO: navigate to notifications
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _myIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _myIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        elevation: 8,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pedal_bike), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

// ---------------- Home tab ----------------

class _HomeTab extends StatelessWidget {
  const _HomeTab();

  @override
  Widget build(BuildContext context) {
      return Container(
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  "Home Tab",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
      );
  
  }
}

