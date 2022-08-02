import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'pages/home/screen.dart';
import 'pages/tab1/page.dart';
import 'pages/tab2/page.dart';
import 'router/page_factory.dart';
import 'router/route_information_parser.dart';
import 'router/tab_enum.dart';

final pageStacksBloc = PageStacksBloc();
final _routerDelegate = MaterialPageStacksRouterDelegate(
  pageStacksBloc: pageStacksBloc,
  child: HomeScreen(bloc: pageStacksBloc),
);
final _routeInformationParser = MyRouteInformationParser();
final _backButtonDispatcher = PageStacksBackButtonDispatcher(pageStacksBloc);

void main() {
  pageStacksBloc.addPageStack(
    TabEnum.one.name,
    PageStackBloc(
      bottomPage: Tab1Page(),
      createPage: PageFactory.createPage,
    ),
  );

  pageStacksBloc.addPageStack(
    TabEnum.two.name,
    PageStackBloc(
      bottomPage: Tab2Page(),
      createPage: PageFactory.createPage,
    ),
  );

  pageStacksBloc.setCurrentStackKey(TabEnum.one.name, fire: false);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
      backButtonDispatcher: _backButtonDispatcher,
    );
  }
}
