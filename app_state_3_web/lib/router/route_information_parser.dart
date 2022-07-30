import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../pages/book_details/configurations.dart';
import '../pages/book_list/configurations.dart';

class MyRouteInformationParser extends PageStackRouteInformationParser {
  @override
  Future<PageConfiguration> parsePageConfiguration(RouteInformation ri) async {
    return
        BookDetailsPageConfiguration.tryParse(ri) ??
        const BookListPageConfiguration(); // The default page if nothing worked.
  }
}
