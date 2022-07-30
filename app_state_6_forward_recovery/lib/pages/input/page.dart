import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'bloc.dart';
import 'screen.dart';

class InputPage extends BlocMaterialPage<void, InputBloc> {
  static const classFactoryKey = 'Input';

  InputPage() : super(
    bloc: InputBloc(),
    createScreen: (b) => InputScreen(bloc: b),
    key: const ValueKey(classFactoryKey),
    factoryKey: classFactoryKey,
  );
}
