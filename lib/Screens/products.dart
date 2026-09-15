

import 'package:flutter/material.dart';

// ---------------- Products tab ----------------

class ProductsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Container(
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  "Products Tab",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

      );
  }
}

