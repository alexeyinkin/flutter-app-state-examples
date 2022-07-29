import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

final pageStackBloc = PageStackBloc<PageConfiguration>(bottomPage: HomePage());

void main() {
  runApp(MyApp());
}

class HomePageConfiguration extends PageConfiguration {
  HomePageConfiguration() : super(key: 'Home');

  @override
  String get location => '/';
}

class HomePage extends StatelessMaterialPage<HomePageConfiguration, void> {
  HomePage() : super(
    key: const ValueKey('Home'),
    child: HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
    );
  }
}

class MyRouteInformationParser extends RouteInformationParser<PageStackConfiguration> {
  @override
  Future<PageStackConfiguration> parseRouteInformation(RouteInformation routeInformation) async {
    return PageStackConfiguration(pageConfigurations: [HomePageConfiguration()]);
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _routerDelegate = PageStackRouterDelegate(pageStackBloc);
  final _routeInformationParser = MyRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
