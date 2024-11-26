import 'package:coffe_coba/components/bottom_nav_bar.dart';
import 'package:coffe_coba/const.dart';
import 'package:coffe_coba/pages/cart_page.dart';
import 'package:coffe_coba/pages/shop_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  } 
  //pages
  final List<Widget>_pages = [
    ShopPage(),

    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavBar(
        onTabChange : (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}