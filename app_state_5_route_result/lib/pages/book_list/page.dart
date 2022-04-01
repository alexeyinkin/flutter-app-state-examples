import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'bloc.dart';
import 'configurations.dart';
import 'screen.dart';

class BookListPage extends BlocMaterialPage<BookListPageConfiguration, BookListBloc> {
  static const factoryKey = 'BookList';

  BookListPage() : super(
    key: const ValueKey(factoryKey),
    bloc: BookListBloc(),
    createScreen: (b) => BookListScreen(bloc: b),
  );
}
