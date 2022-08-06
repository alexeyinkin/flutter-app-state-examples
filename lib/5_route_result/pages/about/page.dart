import 'package:app_state/app_state.dart';
import 'package:flutter/material.dart';

import 'bloc.dart';
import 'screen.dart';

class AboutPage extends BlocMaterialPage<void, AboutPageBloc> {
  static const classFactoryKey = 'About';

  AboutPage() : super(
    key: const ValueKey(classFactoryKey),
    bloc: AboutPageBloc(name: ''),
    createScreen: (b) => AboutScreen(bloc: b),
  );
}
