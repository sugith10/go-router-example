import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Page 1"),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  context.push('/page2');
                },
                child: const Text("Page 1")),
          ),
        ],
      )),
    );
  }
}
