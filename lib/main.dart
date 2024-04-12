import 'package:flutter/material.dart';
import 'package:my_calmsoul/screen/splash_screen.dart';

void main() {
  // add this line to override the http behaviors
  // WidgetsFlutterBinding.ensureInitialized();
  // HttpOverrides.global = MyHttpOverrides();
  // end to add override the http behaviors
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
