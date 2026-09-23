
import 'package:flutter/material.dart';

class AccountGridView extends StatelessWidget {
  const AccountGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': Icons.inventory_2_outlined,
        'title': 'My Orders',
      },
      {
        'icon': Icons.favorite_border,
        'title': 'My Wishlist',
      },
      {
        'icon': Icons.rate_review_outlined,
        'title': 'My Reviews',
      },
      {
        'icon': Icons.location_on_outlined,
        'title': 'My Addresses',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: 
      Stack(
        children:[
          Container(
          child: Text("Hi"),
        ),
        GridView.count(
          crossAxisCount: 3,
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
             Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.brown,
            )


          ],
        )
        ]
      ),

      // GridView.builder(
      //   shrinkWrap: true,
      //   // physics: const NeverScrollableScrollPhysics(),
      //   padding: const EdgeInsets.all(16),
      //   itemCount: items.length,
      
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 32,
      //     mainAxisSpacing: 40,
      //     childAspectRatio: 1.45,
      //   ),
      
      //   itemBuilder: (context, index) {
      //     return _GridItem(
      //       icon: items[index]['icon'] as IconData,
      //       title: items[index]['title'] as String,
      //     );
      //   },
      // ),
    );
  }
}


class _GridItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _GridItem({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          print(title);
        },
        child: Ink(
          decoration: BoxDecoration(
            color: const Color(0xFFF1F3F7),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFFB8C1D1),
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: const Color(0xFF0066CC),
              ),

              const SizedBox(height: 14),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFF3B3B),
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}