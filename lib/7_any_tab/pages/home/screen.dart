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
        children: bloc.pageStacks.map((tabString, bloc) => MapEntry(
          TabEnum.values.byName(tabString),
          PageStackNavigator(key: ValueKey(tabString), bloc: bloc)),
        ),
      ),
      bottomNavigationBar: KeyedBottomNavigationBar<TabEnum>(
        currentItemKey: tab,
        items: const {
          TabEnum.one: BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'One',
          ),
          TabEnum.two: BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Two',
          ),
        },
        onTap: (tab) => bloc.setCurrentStackKey(tab.name),
      ),
    );
  }
}
