import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'pages/about/page.dart';
import 'pages/book_list/page.dart';
import 'router/page_factory.dart';
import 'router/route_information_parser.dart';
import 'router/router_delegate.dart';
import 'router/tab_enum.dart';

final pageStacksBloc = PageStacksBloc();

void main() {
  pageStacksBloc.addPageStack(
    TabEnum.books.name,
    PageStackBloc(
      bottomPage: BookListPage(),
      createPage: PageFactory.createPage,
    ),
  );

  pageStacksBloc.addPageStack(
    TabEnum.about.name,
    PageStackBloc(
      bottomPage: AboutPage(),
      createPage: PageFactory.createPage,
    ),
  );

  pageStacksBloc.setCurrentStackKey(TabEnum.books.name, fire: false);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _routerDelegate = MyRouterDelegate(pageStacksBloc);
  final _routeInformationParser = MyRouteInformationParser();
  final _backButtonDispatcher = PageStacksBackButtonDispatcher(pageStacksBloc);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
      backButtonDispatcher: _backButtonDispatcher,
    );
  }
}
