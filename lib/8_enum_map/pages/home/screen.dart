import 'package:app_state/app_state.dart';
import 'package:keyed_collection_widgets/keyed_collection_widgets.dart';
import 'package:flutter/material.dart';

import '../../router/tab_enum.dart';

class HomeScreen extends StatelessWidget {
  final PageStacksBloc bloc;

  const HomeScreen({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.events,
      builder: (context, snapshot) => _buildOnEvent(),
    );
  }

  Widget _buildOnEvent() {
    final tab = TabEnum.values.byName(bloc.currentStackKey!);

    return Scaffold(
      body: KeyedStack<TabEnum>(
        itemKey: tab,
        children: UnmodifiableTabEnumMap(
          books: PageStackNavigator(
            key: ValueKey(TabEnum.books),
            bloc: bloc.pageStacks[TabEnum.books.name]!,
          ),
          about: PageStackNavigator(
            key: ValueKey(TabEnum.about),
            bloc: bloc.pageStacks[TabEnum.about.name]!,
          ),
        ),
      ),
      bottomNavigationBar: KeyedBottomNavigationBar<TabEnum>(
        currentItemKey: tab,
        items: UnmodifiableTabEnumMap(
          books: BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Books',
          ),
          about: BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ),
        onTap: (tab) => bloc.setCurrentStackKey(tab.name),
      ),
    );
  }
}
