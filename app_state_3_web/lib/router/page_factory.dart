import 'package:app_state/app_state.dart';

import '../pages/book_details/page.dart';
import '../pages/book_list/page.dart';

class PageFactory {
  static AbstractPage<PageConfiguration>? createPage(
    String factoryKey,
    Map<String, dynamic> state,
  ) {
    switch (factoryKey) {
      case BookDetailsPage.factoryKey: return BookDetailsPage(bookId: state['bookId']);
      case BookListPage.factoryKey: return BookListPage();
    }

    return null;
  }
}
