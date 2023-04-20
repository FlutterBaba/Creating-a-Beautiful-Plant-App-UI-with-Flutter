import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';
import 'pages/detail/detail_page.dart';
import 'pages/home/home_page.dart';
import 'pages/welcome/welcome_page.dart';
import 'style/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUTTER UI TUTORIAL',
      theme: AppStyle.theme,
      routes: {
        '/': (context) => const WelcomePage(),
        HomePage.routeName: (context) => const HomePage(),
        DetailPage.routeName: (context) => const DetailPage(),
        BottomBar.routeName: (context) => const BottomBar(),
      },
    );
  }
}
