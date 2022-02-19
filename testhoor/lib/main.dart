import 'package:flutter/material.dart';
import 'features/onboarding/presentation/on_boarding_view.dart';
import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // Theme :ThemeData(fontFamily: '');
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
      routes: <String, WidgetBuilder>{
        '/SplashView': (BuildContext context) => SplashView(),
        '/OnBoardingView': (BuildContext context) => OnBoardingView(),
      },
    );
  }
}
