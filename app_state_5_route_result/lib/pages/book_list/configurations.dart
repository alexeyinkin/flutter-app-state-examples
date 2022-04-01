import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../../router/tab_enum.dart';

class BookListPageConfiguration extends PageConfiguration {
  static const _location = '/books';

  const BookListPageConfiguration() : super(key: 'BookList');

  @override
  RouteInformation restoreRouteInformation() {
    return const RouteInformation(
      location: _location,
    );
  }

  static BookListPageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const BookListPageConfiguration()
        : null;
  }

  @override
  String get defaultStackKey => TabEnum.books.name;
}
