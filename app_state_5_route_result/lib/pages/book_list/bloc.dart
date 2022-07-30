import 'package:app_state/app_state.dart';

import '../../main.dart';
import '../../models/book.dart';
import '../book_details/page.dart';
import 'configurations.dart';

class BookListBloc extends PageBloc {
  void showDetails(Book book) {
    pageStacksBloc.currentStackBloc?.push(BookDetailsPage(bookId: book.id));
  }

  @override
  getConfiguration() => const BookListPageConfiguration();
}
