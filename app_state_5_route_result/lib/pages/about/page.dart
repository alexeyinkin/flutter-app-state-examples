import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'bloc.dart';
import 'configurations.dart';
import 'screen.dart';

class AboutPage extends BlocMaterialPage<PageConfiguration, AboutPageBloc> {
  static const factoryKey = 'About';

  AboutPage() : super(
    key: const ValueKey(factoryKey),
    bloc: AboutPageBloc(name: ''),
    createScreen: (b) => AboutScreen(bloc: b),
  );
}
