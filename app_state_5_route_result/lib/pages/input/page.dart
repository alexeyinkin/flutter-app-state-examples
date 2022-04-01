import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'bloc.dart';
import 'configurations.dart';
import 'screen.dart';

class InputPage extends BlocMaterialPage<InputPageConfiguration, InputPageBloc> {
  static const factoryKey = 'Input';

  InputPage({required String name}) : super(
    key: const ValueKey(factoryKey),
    bloc: InputPageBloc(name: name),
    createScreen: (b) => InputScreen(bloc: b),
  );
}
