import 'package:bookly_project/constance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/presentation/view/splash_view.dart';

void main() {
  runApp(booklyApp());
}

class booklyApp extends StatefulWidget {
  const booklyApp({super.key});

  @override
  State<booklyApp> createState() => _booklyAppState();
}

class _booklyAppState extends State<booklyApp>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation slidingAnimation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColor),
      home: const SplashView(),
    );
  }
}
