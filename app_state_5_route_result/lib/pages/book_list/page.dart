import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'bloc.dart';
import 'configurations.dart';
import 'screen.dart';

class BookListPage extends BlocMaterialPage<BookListPageConfiguration, void, BookListBloc> {
  static const classFactoryKey = 'BookList';

  BookListPage() : super(
    key: const ValueKey(classFactoryKey),
    bloc: BookListBloc(),
    createScreen: (b) => BookListScreen(bloc: b),
  );
}
