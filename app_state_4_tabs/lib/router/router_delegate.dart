import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import '../pages/home/screen.dart';

class MyRouterDelegate extends PageStacksRouterDelegate {
  MyRouterDelegate(PageStacksBloc pageStacksBloc) : super(pageStacksBloc);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: const ValueKey('HomePage'),
          child: HomeScreen(bloc: pageStacksBloc),
        ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        return true;
      },
    );
  }
}
