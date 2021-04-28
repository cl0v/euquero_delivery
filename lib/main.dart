import 'package:euquero_delivery/app/pages/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EuQuero Delivery',
      theme: ThemeData(
        appBarTheme: AppBarTheme().copyWith(color: Colors.white),
      //   bottomAppBarColor: Colors.white,
      //   shadowColor: Colors.black,
      //   bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
      //     elevation: 100.0,
      //     backgroundColor: Colors.red,
      //   ),
        
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
