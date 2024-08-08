import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/router/route_constants.dart';

class Page4 extends StatelessWidget {
  final String id ;
  const Page4({
   required this.id,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Page 4"),
            Text(id),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(RouteConstants.page2);
                },
                child: const Text("Page 4"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
