import 'package:flutter/material.dart';
import 'package:logincheck/homepage.dart';
import 'package:logincheck/slpashscreen.dart';
import 'package:provider/provider.dart';

import 'auth_provider.dart';
import 'loginpage.dart';
void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      navigatorKey: navigatorKey,
      routes: {
        '/': (context) => SplashScreen(),
        'loginpage': (context) => LoginPage(),
        'homepage': (context) => HomePage(),
      },
    ),
  ));
}
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();