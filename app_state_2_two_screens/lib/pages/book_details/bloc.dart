import 'package:app_state/app_state.dart';

import '../../models/book.dart';

class BookDetailsBloc extends PageBloc<PageConfiguration> {
  final Book book;

  BookDetailsBloc({
    required this.book,
  });
}
