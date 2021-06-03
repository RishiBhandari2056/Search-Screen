import 'package:customerscreen/Screens/customer_screen.dart';
import 'package:customerscreen/Screens/searchscreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      // home: CustomerScreen(),
      home: SearchScreen(),
    );
  }
}
