import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../../router/tab_enum.dart';

class BookListPath extends PagePath {
  static const _location = '/books';

  const BookListPath() : super(key: 'BookList');

  @override
  String get location => _location;

  static BookListPath? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const BookListPath()
        : null;
  }

  @override
  String get defaultStackKey => TabEnum.books.name;
}
