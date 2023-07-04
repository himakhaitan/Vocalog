import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    // Set Status Bar for Android
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    // Set MaterialApp
    return MaterialApp(
      title: "Vocalog",
      theme: ThemeData(useMaterial3: true,),
      debugShowCheckedModeBanner: false,
    );
  }
}
