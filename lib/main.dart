import 'package:flutter/material.dart';
import 'package:go_router_example/page/page_1.dart';
import 'package:go_router_example/router/app_router.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "GoRouter Example",
  
      routerConfig: AppRouter().router,
    );

    // return const MaterialApp(
    //   home: Page1(),
    // );
  }
}
