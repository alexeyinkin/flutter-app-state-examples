import 'package:flutter/material.dart';

import 'bloc.dart';

class BookListScreen extends StatelessWidget {
  final BookListBloc bloc;

  const BookListScreen({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        children: [
          for (final book in bloc.books)
            ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
              onTap: () => bloc.showDetails(book),
            ),
        ],
      ),
    );
  }
}
