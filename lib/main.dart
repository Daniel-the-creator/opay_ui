import 'package:flutter/material.dart';
import 'package:opay_ui/home_screen.dart';

import 'Bottom_Nav_Bar.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get shape => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Opay Clone",
          home: gitBottomNavBar()
    );


  }
}
