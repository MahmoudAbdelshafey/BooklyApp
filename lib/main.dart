import 'package:booklyapp3/core/Themes/Themes.dart';
import 'package:booklyapp3/features/presentation/views/splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyThemes.lightTheme,
      debugShowCheckedModeBanner: false,
    home: const SplashView(),
    );
  }
}
