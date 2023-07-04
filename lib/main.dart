import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vocalog/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final AppRouter _appRouter = AppRouter();

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
      onGenerateRoute: _appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
