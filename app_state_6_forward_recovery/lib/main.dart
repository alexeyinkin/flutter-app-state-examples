import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'pages/home/page.dart';
import 'router/page_factory.dart';
import 'router/route_information_parser.dart';

final pageStackBloc = PageStackBloc<PageConfiguration>(
  bottomPage: HomePage(),
  createPage: PageFactory.createPage,
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _routerDelegate = PageStackRouterDelegate(pageStackBloc);
  final _routeInformationParser = MyRouteInformationParser();
  final _backButtonDispatcher = PageStackBackButtonDispatcher(pageStackBloc);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
      backButtonDispatcher: _backButtonDispatcher,
    );
  }
}
