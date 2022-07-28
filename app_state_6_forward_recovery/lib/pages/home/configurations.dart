import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

class HomePageConfiguration extends PageConfiguration {
  static const _location = '/';

  const HomePageConfiguration() : super(key: 'Home');

  @override
  RouteInformation restoreRouteInformation() {
    return const RouteInformation(
      location: _location,
    );
  }

  static HomePageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const HomePageConfiguration()
        : null;
  }
}
