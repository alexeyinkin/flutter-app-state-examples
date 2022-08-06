import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'bloc.dart';
import 'screen.dart';

class BookListPage extends BlocMaterialPage<void, BookListBloc> {
  BookListPage() : super(
    key: const ValueKey('BookList'),
    bloc: BookListBloc(),
    createScreen: (b) => BookListScreen(bloc: b),
  );
}
