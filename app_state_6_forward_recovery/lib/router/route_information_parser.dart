import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/home/configurations.dart';
import '../pages/input/configurations.dart';

class MyRouteInformationParser extends PageStackRouteInformationParser {
  @override
  Future<PageStackConfiguration> parseRouteInformation(RouteInformation ri) async {
    return _parseTopPageConfiguration(ri).defaultStackConfiguration;
  }

  PageConfiguration _parseTopPageConfiguration(RouteInformation ri) {
    return
        InputPageConfiguration.tryParse(ri) ??
        const HomePageConfiguration();
  }
}
