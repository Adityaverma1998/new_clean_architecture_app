import 'package:flutter/material.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/app/app.dart';

void main() async {
   
   WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const MainApp(),
    );
  }
}

