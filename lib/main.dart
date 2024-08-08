import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/router/app_routes.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "GoRouter Example",
  
      routerConfig: GoRouter(routes: $appRoutes),
    );

  }
}
