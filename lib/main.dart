import 'package:flutter/material.dart';
import 'package:project_3/Screens/account.dart';
import 'package:project_3/Screens/grid_view.dart';
import 'package:project_3/Screens/home.dart';
import 'package:project_3/Screens/login.dart';
import 'package:project_3/Screens/new.dart';
import 'package:project_3/Screens/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'account',
    routes: {
      'account' : (context) => const AccountGridView(),
      'grid_view' : (context) => const MyGridView(),
      'new' : (context) => const DealOfTheDaySection(deals: const [
    DealProductData(
      badgeText: "50% Off",
      badgeColor: Color(0xFF1B5E20),
      imageUrl: "https://example.com/smartwatch.jpg",
      productName: "Premium Smartwatch...",
      price: "\$149",
      originalPrice: "\$299",
    ),
    DealProductData(
      badgeText: "Top Deal",
      badgeColor: Color(0xFF1B5E20),
      imageUrl: "https://example.com/earbuds.jpg",
      productName: "Noise Cancelling Wireless Earbuds",
      price: "\$89",
      originalPrice: "\$129",
    ),
    DealProductData(
      badgeText: "30% Off",
      badgeColor: Color(0xFF1B5E20),
      imageUrl: "https://example.com/shoes.jpg",
      productName: "Pro Running Shoes Men",
      price: "\$75",
      originalPrice: "\$110",
    ),
  ],),
      'register' : (context) => const MyRegister(),
      'login' : (context) => const MyLogin(),
      'home' : (context) => const MyHome(),
    },
  ));
}


