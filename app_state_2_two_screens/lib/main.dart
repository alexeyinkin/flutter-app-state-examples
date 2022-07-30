import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'pages/book_list/page.dart';

final pageStackBloc = PageStackBloc(bottomPage: BookListPage());
final _routerDelegate = PageStackRouterDelegate(pageStackBloc);
final _backButtonDispatcher = PageStackBackButtonDispatcher(pageStackBloc);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: const PageStackRouteInformationParser(),
      backButtonDispatcher: _backButtonDispatcher,
    );
  }
}
