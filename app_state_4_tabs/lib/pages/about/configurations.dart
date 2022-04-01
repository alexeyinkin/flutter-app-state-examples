import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../../router/tab_enum.dart';

class AboutPageConfiguration extends PageConfiguration {
  static const _location = '/about';

  const AboutPageConfiguration() : super(key: 'About');

  @override
  RouteInformation restoreRouteInformation() {
    return const RouteInformation(
      location: _location,
    );
  }

  static AboutPageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const AboutPageConfiguration()
        : null;
  }

  @override
  String get defaultStackKey => TabEnum.about.name;
}
