import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: ''),
      ],
    );
  }
}