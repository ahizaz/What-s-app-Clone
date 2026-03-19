import 'package:flutter/material.dart';
import 'package:whats_app_clone/pages/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffFF075E55),
    ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.black.withValues(alpha: 0),
  )

   ),
   routes: {
    "/":(context)=>HomePages()
   },
    );
  }
}

