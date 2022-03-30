import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

class BookListPageConfiguration extends PageConfiguration {
  BookListPageConfiguration() : super(key: 'BookList');

  @override
  RouteInformation restoreRouteInformation() {
    return const RouteInformation(
      location: '/',
    );
  }
}
