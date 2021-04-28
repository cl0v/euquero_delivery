import 'package:euquero_delivery/app/pages/home/home_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/img/splash/splash.jpg');
  }
}
