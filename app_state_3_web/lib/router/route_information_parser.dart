import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/book_details/configurations.dart';
import '../pages/book_list/configurations.dart';

class MyRouteInformationParser extends PageStackRouteInformationParser {
  @override
  Future<PageStackConfiguration> parseRouteInformation(RouteInformation ri) async {
    return _parseTopPageConfiguration(ri).defaultStackConfiguration;
  }

  PageConfiguration _parseTopPageConfiguration(RouteInformation ri) {
    return
        BookDetailsPageConfiguration.tryParse(ri) ??
        BookListPageConfiguration.tryParse(ri) ?? // Optional, it's the default page.

        // The default page if nothing worked.
        const BookListPageConfiguration();
  }
}
