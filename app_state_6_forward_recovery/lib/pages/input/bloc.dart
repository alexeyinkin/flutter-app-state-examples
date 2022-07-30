import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import 'configurations.dart';

class InputBloc extends PageBloc {
  final controller = TextEditingController();

  InputBloc() {
    controller.addListener(emitConfigurationChanged);
  }

  @override
  InputPageConfiguration getConfiguration() => InputPageConfiguration(
    text: controller.text,
  );

  @override
  void setStateMap(Map<String, dynamic> state) {
    controller.text = state['text'] ?? '';
  }
}
