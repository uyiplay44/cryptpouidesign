import 'package:flutter/material.dart';
import 'package:seconproject/page/account/account.dart';
import 'package:seconproject/page/home/home_page.dart';
import 'package:seconproject/page/profile/profile.dart';
import 'package:seconproject/page/rates/rates.dart';
import 'package:seconproject/page/trade/trade.dart';
import 'package:seconproject/page/transactions/transaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _index(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  final List<Widget> _pages = [
    HomePageScreen(),
    RatePage(),
    TradePage(),
    TransactionPage(),
    ProfilePage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store, size: 20),
            label: 'Rates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.traffic_rounded, size: 20),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes, size: 20),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 20),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.white,
        onTap: _index,
      ),
      body: SafeArea(
        child: IndexedStack(index: _selectedIndex, children: _pages),
      ),
    );
  }
}
