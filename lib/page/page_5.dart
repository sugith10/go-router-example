import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page5 extends StatelessWidget {
  final String id;
  const Page5({
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Page 5"),
          Text(id),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.go("/");
              },
              child: const Text("Page 1"),
            ),
          ),
        ],
      )),
    );
  }
}
