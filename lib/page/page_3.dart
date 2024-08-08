import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      body: SafeArea(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const Text("Page 3"),
              Center(
                      child: ElevatedButton(
              onPressed: () {},
              child: const Text("Page 3"),
                      ),
                    ),
            ],
          )),
    );
  }
}
