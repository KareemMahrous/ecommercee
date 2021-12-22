import 'package:ecommerce/constant.dart';
import 'package:ecommerce/view/screens/category_screen.dart';
import 'package:ecommerce/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'bag_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List _screens = [
    HomeScreen(),
    CategoryScreen(),
    BagScreen(),
    Scaffold(),
    Scaffold(),
  ];
  final List _labels = ['Home', 'Shop', 'Bag', 'Favorites', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Background,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Primary,
        unselectedItemColor: Gray,
        elevation: 100.0,
        items: [
          Icons.home,
          Icons.shopping_cart_outlined,
          Icons.local_mall_outlined,
          Icons.favorite_border_outlined,
          Icons.account_circle_outlined
        ]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    label: _labels[_selectedIndex],
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(value,color: _selectedIndex == key ? Primary : Gray,),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}
