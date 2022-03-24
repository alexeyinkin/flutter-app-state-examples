import 'package:flutter/material.dart';

import 'bloc.dart';

class BookDetailsScreen extends StatelessWidget {
  final BookDetailsBloc bloc;

  BookDetailsScreen({
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: bloc.closeScreen),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bloc.book.title, style: Theme.of(context).textTheme.headline6),
            Text(bloc.book.author, style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}
