import 'package:flutter/material.dart';
import 'package:opay_ui/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});


  @override
  State<BottomNavBar> createState() => _BottomNavBarState();

}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex= 0;

  void ItemTapped(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  final _screens=[
    const HomeScreen(),
    const Center(child: Text('rewards')),
    const Center(child: Text('finance')),
    const Center(child: Text('cards')),
    const Center(child: Text('me')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar
        (
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: true,
        onTap: ItemTapped,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: 'home',),
        BottomNavigationBarItem(icon: Icon(Icons.diamond),label: 'rewards',),
        BottomNavigationBarItem(icon: Icon(Icons.show_chart_sharp),label: 'finance',),
        BottomNavigationBarItem(icon: Icon(Icons.credit_card),label: 'cards',),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'me',)
      ],)

    );
  }
}
