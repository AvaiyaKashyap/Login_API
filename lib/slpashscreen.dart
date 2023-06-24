import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _nameRetriever() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';
    print(token);
    if (token == '') {
      Navigator.pushReplacementNamed(context, 'loginpage');
      print("navigated to login page");
    } else {
      //navigatorKey.currentState?.pushNamed('homepage');
      Navigator.pushReplacementNamed(context, 'homepage');
      print("navigated to home page");
    }
  }
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    _nameRetriever();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              navigatorKey.currentState?.pushNamed('loginpage');
            },
                child: Text("Login page")),
            ElevatedButton(onPressed: () {
              _nameRetriever();
            },
             child: Text("Data"),),
          ],
        ),
      ),
    );
  }
}
