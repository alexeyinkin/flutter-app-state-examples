import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'bloc.dart';

class InputScreen extends StatelessWidget {
  final InputBloc bloc;

  const InputScreen({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Text',
              style: Theme.of(context).textTheme.headline6,
            ),
            TextField(
              controller: bloc.controller,
            ),
            // Container(height: 30),
            // Link(
            //   uri: Uri.parse('https://google.com'),
            //   builder: (context, followLink) => ElevatedButton(
            //     child: const Text('Navigate Away'),
            //     onPressed: followLink,
            //   ),
            //   target: LinkTarget.self,
            // ),
          ],
        ),
      ),
    );
  }
}
