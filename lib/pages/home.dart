import 'package:doctor/pages/appointments_page.dart';
import 'package:doctor/pages/chats_page.dart';
import 'package:doctor/pages/dashboard.dart';
import 'package:doctor/pages/explore_page.dart';
import 'package:doctor/pages/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //Pages
    const Dashboard(),
    const ExplorePage(),
    const AppointmentsPage(),
    const ChatsPage(),
    const SearchPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      //Bottom NavBar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        onTap: (index) => _navigateBottomBar(index),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled
            ), 
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined
            ), 
          label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today
            ), 
          label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline
            ), 
          label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined
            ), 
            label: ''
          ),
        ],
      ),
    );
  }
}
