import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view/view_base.dart';
import '../view/view_home.dart';
import '../view/view_setting.dart';

final routerProvider = Provider((ref) => GoRouter(
      initialLocation: '/',
      routes: [
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) =>
              ViewBase(child: child),
          routes: [
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) =>
                  const ViewHome(),
            ),
            GoRoute(
              path: '/sub',
              builder: (BuildContext context, GoRouterState state) =>
                  const ViewSetting(),
            ),
          ],
        ),
      ],
    ));
