import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/home/configurations.dart';
import '../pages/input/configurations.dart';

class MyRouteInformationParser extends PageStackRouteInformationParser {
  @override
  Future<PageConfiguration> parsePageConfiguration(RouteInformation ri) async {
    return
        InputPageConfiguration.tryParse(ri) ??
        const HomePageConfiguration(); // The default page if nothing worked.
  }
}
