import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'bloc.dart';
import 'screen.dart';

class InputPage extends BlocMaterialPage<String, InputPageBloc> {
  static const classFactoryKey = 'Input';

  InputPage({required String name}) : super(
    key: const ValueKey(classFactoryKey),
    bloc: InputPageBloc(name: name),
    createScreen: (b) => InputScreen(bloc: b),
  );
}
