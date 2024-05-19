import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => const LoginPage(),
    HomePage.tag: (context) => const HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const LoginPage(),
      routes: routes,
    );
  }
}
