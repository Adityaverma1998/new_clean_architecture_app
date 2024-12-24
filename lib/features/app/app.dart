import 'package:flutter/material.dart';
import 'package:news_app/features/app/routes.dart';
import 'package:news_app/features/app/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themeData,
      routerConfig: AppRouter().generateRoute(),
    );
  }
}