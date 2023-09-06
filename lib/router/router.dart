import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_auto_route/pages/home_page.dart';
import 'package:test_auto_route/pages/page_one.dart';
import 'package:test_auto_route/pages/page_one_one.dart';
import 'package:test_auto_route/pages/page_two.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MyHomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: RouteOne.page),
        AutoRoute(page: RouteOneOne.page),
        AutoRoute(page: RouteTwo.page),
      ];
}
