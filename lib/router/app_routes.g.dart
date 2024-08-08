// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $page1Route,
      $page2Route,
      $page3Route,
      $page4Route,
      $page5Route,
    ];

RouteBase get $page1Route => GoRouteData.$route(
      path: '/',
      factory: $Page1RouteExtension._fromState,
    );

extension $Page1RouteExtension on Page1Route {
  static Page1Route _fromState(GoRouterState state) => const Page1Route();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $page2Route => GoRouteData.$route(
      path: '/page2',
      factory: $Page2RouteExtension._fromState,
    );

extension $Page2RouteExtension on Page2Route {
  static Page2Route _fromState(GoRouterState state) => const Page2Route();

  String get location => GoRouteData.$location(
        '/page2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $page3Route => GoRouteData.$route(
      path: '/page3',
      factory: $Page3RouteExtension._fromState,
    );

extension $Page3RouteExtension on Page3Route {
  static Page3Route _fromState(GoRouterState state) => const Page3Route();

  String get location => GoRouteData.$location(
        '/page3',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $page4Route => GoRouteData.$route(
      path: '/page4/new/:id',
      factory: $Page4RouteExtension._fromState,
    );

extension $Page4RouteExtension on Page4Route {
  static Page4Route _fromState(GoRouterState state) => Page4Route(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/page4/new/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $page5Route => GoRouteData.$route(
      path: '/page5/profile/:id',
      factory: $Page5RouteExtension._fromState,
    );

extension $Page5RouteExtension on Page5Route {
  static Page5Route _fromState(GoRouterState state) => Page5Route(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/page5/profile/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
