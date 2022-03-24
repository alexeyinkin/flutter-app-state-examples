import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import '../../models/book.dart';

import 'bloc.dart';
import 'screen.dart';

class BookDetailsPage extends BlocMaterialPage<PageConfiguration, BookDetailsBloc> {
  BookDetailsPage({
    required Book book,
  }) : super(
    key: ValueKey('Book_${book.id}'),
    bloc: BookDetailsBloc(book: book),
    createScreen: (b) => BookDetailsScreen(bloc: b),
  );
}
