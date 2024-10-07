import 'package:flutter/material.dart';
import 'package:online_store/features/home/presentation/views/widgets/favourits.dart';
import 'package:online_store/features/home/presentation/views/widgets/home.dart';

import 'widgets/settings.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  List<Widget> screans = [Home(), Favourits(), Settings()];

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBar = BottomNavigationBar(
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
    return Scaffold(
      appBar: AppBar(
        // leading:  add your image here ,
        // /*Image.asset('assets/images/logo.png'),*/  ;
        title: const Text('bic_market'),
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: Center(child: screans[_selectedIndex]),
    );
  }
}
