import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'configurations.dart';

class AboutPage extends StatelessMaterialPage<PageConfiguration> {
  static const factoryKey = 'About';

  AboutPage() : super(
    key: const ValueKey(factoryKey),
    child: Scaffold(appBar: AppBar(title: const Text('About'))),
    configuration: const AboutPageConfiguration(),
  );
}
