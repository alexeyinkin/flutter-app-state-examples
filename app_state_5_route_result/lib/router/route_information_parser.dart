import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/about/configurations.dart';
import '../pages/book_details/configurations.dart';
import '../pages/book_list/configurations.dart';
import '../pages/input/configurations.dart';

class MyRouteInformationParser extends PageStacksRouteInformationParser {
  @override
  Future<PageStacksConfiguration> parseRouteInformation(RouteInformation ri) async {
    return _parseTopPageConfiguration(ri).defaultStacksConfiguration;
  }

  PageConfiguration _parseTopPageConfiguration(RouteInformation ri) {
    return
        AboutPageConfiguration.tryParse(ri) ??
        InputPageConfiguration.tryParse(ri) ??
        BookDetailsPageConfiguration.tryParse(ri) ??
        BookListPageConfiguration.tryParse(ri) ?? // Optional, it's the default page.

        // The default page if nothing worked.
        const BookListPageConfiguration();
  }
}
