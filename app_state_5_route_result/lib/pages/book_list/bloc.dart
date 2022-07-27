import 'package:app_state/app_state.dart';

import '../../main.dart';
import '../../models/book.dart';
import '../book_details/page.dart';
import 'configurations.dart';

class BookListBloc extends PageBloc<BookListPageConfiguration, void> {
  void showDetails(Book book) {
    pageStacksBloc.currentStackBloc?.push(BookDetailsPage(bookId: book.id));
  }

  @override
  BookListPageConfiguration getConfiguration() => const BookListPageConfiguration();
}
