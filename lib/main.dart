import 'package:flutter/material.dart';
import 'package:wallet_app_task/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Wallet App',
      routerConfig: RouterClass().router,
    );
  }
}
