import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/about/configurations.dart';
import '../pages/book_details/configurations.dart';
import '../pages/book_list/configurations.dart';
import '../pages/input/configurations.dart';

class MyRouteInformationParser extends PageStacksRouteInformationParser {
  @override
  Future<PageConfiguration> parsePageConfiguration(RouteInformation ri) async {
    return
      AboutPageConfiguration.tryParse(ri) ??
          InputPageConfiguration.tryParse(ri) ??
          BookDetailsPageConfiguration.tryParse(ri) ??
          const BookListPageConfiguration(); // The default page if nothing worked.
  }
}
