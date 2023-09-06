// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
      );
    },
    RouteOne.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageOne(),
      );
    },
    RouteOneOne.name: (routeData) {
      final args = routeData.argsAs<RouteOneOneArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PageOneOne(
          key: args.key,
          someParams: args.someParams,
        ),
      );
    },
    RouteTwo.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PageTwo(),
      );
    },
  };
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageOne]
class RouteOne extends PageRouteInfo<void> {
  const RouteOne({List<PageRouteInfo>? children})
      : super(
          RouteOne.name,
          initialChildren: children,
        );

  static const String name = 'RouteOne';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageOneOne]
class RouteOneOne extends PageRouteInfo<RouteOneOneArgs> {
  RouteOneOne({
    Key? key,
    required SomeParams someParams,
    List<PageRouteInfo>? children,
  }) : super(
          RouteOneOne.name,
          args: RouteOneOneArgs(
            key: key,
            someParams: someParams,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteOneOne';

  static const PageInfo<RouteOneOneArgs> page = PageInfo<RouteOneOneArgs>(name);
}

class RouteOneOneArgs {
  const RouteOneOneArgs({
    this.key,
    required this.someParams,
  });

  final Key? key;

  final SomeParams someParams;

  @override
  String toString() {
    return 'RouteOneOneArgs{key: $key, someParams: $someParams}';
  }
}

/// generated route for
/// [PageTwo]
class RouteTwo extends PageRouteInfo<void> {
  const RouteTwo({List<PageRouteInfo>? children})
      : super(
          RouteTwo.name,
          initialChildren: children,
        );

  static const String name = 'RouteTwo';

  static const PageInfo<void> page = PageInfo<void>(name);
}
