import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/page/page_3.dart';
import 'package:go_router_example/page/page_4.dart';
import 'package:go_router_example/page/page_5.dart';

import '../page/page_1.dart';
import '../page/page_2.dart';

part 'app_routes.g.dart';

@TypedGoRoute<Page1Route>(path: '/')
class Page1Route extends GoRouteData {
  const Page1Route();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page1();
  }
}

@TypedGoRoute<Page2Route>(path: '/page2')
class Page2Route extends GoRouteData {
  const Page2Route();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page2();
  }
}

@TypedGoRoute<Page3Route>(path: '/page3')
class Page3Route extends GoRouteData {
  const Page3Route();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Page3();
  }
}

@TypedGoRoute<Page4Route>(path: '/page4/new/:id')
class Page4Route extends GoRouteData {
  const Page4Route({
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Page4(
      id: state.uri.queryParameters['message']!,
    );
  }
}

@TypedGoRoute<Page5Route>(path: '/page5/profile/:id')
class Page5Route extends GoRouteData {
  const Page5Route({
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Page5(
      id: state.pathParameters['id']!,
    );
  }
}

//dart run build_runner build -d

// class AppRouter {
//   GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         name: RouteConstants.page1,
//         path: '/',
//         pageBuilder: (context, state) {
//           return const MaterialPage(child: Page1());
//         },
//       ),
//       GoRoute(
//         name: RouteConstants.page2,
//         path: '/page2',
//         pageBuilder: (context, state) {
//           return const MaterialPage(child: Page2());
//         },
//       ),
//       GoRoute(
//         name: RouteConstants.page3,
//         path: '/page3',
//         pageBuilder: (context, state) {
//           return const MaterialPage(child: Page3());
//         },
//       ),
//       GoRoute(
//           name: RouteConstants.page4,
//         path: '/page4/new/:id',
//         pageBuilder: (context, state) {
//           return  MaterialPage(child: Page4(
//              id: state.uri.queryParameters['message']!,
//           ));
//         },
//       ),
//       GoRoute(
//         name: RouteConstants.page5,
//         path: '/page5/profile/:id',
//         pageBuilder: (context, state) {

//           return  MaterialPage(child: Page5(
//             id: state.pathParameters['id']!,
//           ));
//         },
//       ),
//     ],

//     redirect: (context, state) {
//       bool isAuthenticated = true;

//       // ignore: dead_code
//       if(!isAuthenticated){
//         return state.namedLocation(RouteConstants.page2);
//       }
//       // ignore: dead_code
//       return null;
//     },
//   );
// }
