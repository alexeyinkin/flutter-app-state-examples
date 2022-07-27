import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import '../../book_repository.dart';

import 'configurations.dart';
import 'screen.dart';

class BookDetailsPage extends StatelessMaterialPage<PageConfiguration, void> {
  static const classFactoryKey = 'BookDetails';

  BookDetailsPage({
    required int bookId,
  }) : super(
    key: ValueKey(formatKey(bookId: bookId)),
    child: BookDetailsScreen(book: bookRepository[bookId]),
    configuration: BookDetailsPageConfiguration(bookId: bookId),
  );

  static String formatKey({required int bookId}) {
    return '${classFactoryKey}_$bookId';
  }
}
