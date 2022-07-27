import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import 'page.dart';
import '../book_list/configurations.dart';

class BookDetailsPageConfiguration extends PageConfiguration {
  final int bookId;

  static final _regExp = RegExp(r'^/books/(\d+)$');

  BookDetailsPageConfiguration({
    required this.bookId,
  }) : super(
    key: BookDetailsPage.formatKey(bookId: bookId),
    factoryKey: BookDetailsPage.classFactoryKey,
    state: {'bookId': bookId},
  );

  @override
  RouteInformation restoreRouteInformation() {
    return RouteInformation(
      location: '/books/$bookId',
    );
  }

  static BookDetailsPageConfiguration? tryParse(RouteInformation ri) {
    final matches = _regExp.firstMatch(ri.location ?? '');
    if (matches == null) return null;

    final bookId = int.tryParse(matches[1] ?? '');

    if (bookId == null) {
      return null; // Will never get here with present _regExp.
    }

    return BookDetailsPageConfiguration(
      bookId: bookId,
    );
  }

  @override
  PageStackConfiguration get defaultStackConfiguration {
    return PageStackConfiguration(
      pageConfigurations: [
        const BookListPageConfiguration(),
        this,
      ],
    );
  }
}
