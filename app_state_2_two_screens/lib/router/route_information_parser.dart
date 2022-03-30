import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/book_list/configurations.dart';

class AppRouteInformationParser extends RouteInformationParser<PageStackConfiguration> {
  @override
  Future<PageStackConfiguration> parseRouteInformation(RouteInformation ri) async {
    return PageStackConfiguration(pageConfigurations: [BookListPageConfiguration()]);
  }
}
