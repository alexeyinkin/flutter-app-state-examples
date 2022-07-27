import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import '../../models/book.dart';

import 'screen.dart';

class BookDetailsPage extends StatelessMaterialPage<PageConfiguration, void> {
  BookDetailsPage({
    required Book book,
  }) : super(
    key: ValueKey('Book_${book.id}'),
    child: BookDetailsScreen(book: book),
  );
}
