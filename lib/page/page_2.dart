import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/router/route_constants.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Page 2"),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(RouteConstants.page3);
                  },
                  child: const Text("Page 3"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(
                      RouteConstants.page4,
                      pathParameters: {"id": "100"},
                      queryParameters: {
                        'id': "100",
                        "message": "hello world",
                      },
                    );
                  },
                  child: const Text("Page 4"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(
                      RouteConstants.page5,
                      pathParameters: {"id": "Hwllo"},
                    );
                  },
                  child: const Text("Page 5"),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
