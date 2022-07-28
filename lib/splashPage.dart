import 'package:flutter/material.dart';
import 'package:manikbastralaya/webviewPage.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).whenComplete(
      () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => WebviewPage()),
        (route) => false,
      ),
    );
    super.initState();
  }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Center(
          child: Image.asset(
            'assets/logo.png',
            height: 100,
          ),
        ),
      ),
    );
  }
}
