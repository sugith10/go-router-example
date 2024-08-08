import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/page/page_1.dart';
import 'package:go_router_example/page/page_4.dart';
import 'package:go_router_example/page/page_5.dart';
import 'package:go_router_example/router/route_constants.dart';

import '../page/page_2.dart';
import '../page/page_3.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.page1,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Page1());
        },
      ),
      GoRoute(
        name: RouteConstants.page2,
        path: '/page2',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Page2());
        },
      ),
      GoRoute(
        name: RouteConstants.page3,
        path: '/page3',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Page3());
        },
      ),
      GoRoute(
          name: RouteConstants.page4,
        path: '/page4/new/:id',
        pageBuilder: (context, state) {
          return  MaterialPage(child: Page4(
             id: state.uri.queryParameters['message']!,
          ));
        },
      ),
      GoRoute(
        name: RouteConstants.page5,
        path: '/page5/profile/:id',
        pageBuilder: (context, state) {

          return  MaterialPage(child: Page5(
            id: state.pathParameters['id']!,
          ));
        },
      ),
    ],

    redirect: (context, state) {
      bool isAuthenticated = true;

      // ignore: dead_code
      if(!isAuthenticated){
        return state.namedLocation(RouteConstants.page2);
      }
      // ignore: dead_code
      return null;
    },
  );
}
