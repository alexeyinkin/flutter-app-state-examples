import 'package:app_state/app_state.dart';

import '../../main.dart';
import '../../models/book.dart';
import '../book_details/page.dart';

class BookListBloc extends PageBloc {
  final books = [
    Book(1, 'Stranger in a Strange Land', 'Robert A. Heinlein'),
    Book(2, 'Foundation', 'Isaac Asimov'),
    Book(3, 'Fahrenheit 451', 'Ray Bradbury'),
  ];

  void showDetails(Book book) {
    pageStackBloc.push(BookDetailsPage(book: book));
  }
}
