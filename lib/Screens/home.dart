import 'package:flutter/material.dart';
import 'package:project_3/Screens/app_settings.dart';

import 'products.dart';
import 'settings.dart';
//MyHome
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
      return SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Welcome to ShopSmart",style: TextStyle(
              fontSize: 24,
              color: AppColors.titleColor,
            ),),

            SizedBox(height: 12,),

            Text("We are here to shop something...",style: TextStyle(
              fontSize: 18,
              color: AppColors.subTitleColor,
            ),),

            SizedBox(height: 12,),

            Row(

              children: [
                Expanded(child: ProductCard(icon: Icons.shopping_cart_outlined, 
              value: '12', 
              title: 'Orders', 
              color: AppColors.primaryColor)),

              SizedBox(width: 20,),

              Expanded(child: ProductCard(icon: Icons.favorite_outline, 
              value: '10', 
              title: 'WishList', 
              color: AppColors.redColor)),
              ]

            ),

          ],
        ),
      );
  
  }
}

class ProductCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String title;
  final Color color;

  const ProductCard({super.key,
  required this.icon,
  required this.value,
  required this.title,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,color: color,size: 34,),
          SizedBox(height: 16,),
          Text(value,style: TextStyle(
            fontSize: 18,
            color: AppColors.titleColor
          ),),
          SizedBox(height: 16,),
          Text(title,style: TextStyle(
            fontSize: 14,
            color: AppColors.subTitleColor),)
        ],
      ),
    );
  }
}