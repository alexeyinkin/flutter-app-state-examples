import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

class BookListPageConfiguration extends PageConfiguration {
  static const _location = '/books';

  const BookListPageConfiguration() : super(key: 'BookList');

  @override
  String get location => _location;

  static BookListPageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const BookListPageConfiguration()
        : null;
  }
}
