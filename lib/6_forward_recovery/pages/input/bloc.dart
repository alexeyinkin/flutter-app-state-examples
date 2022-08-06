import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import 'path.dart';

class InputBloc extends PageBloc {
  final controller = TextEditingController();

  InputBloc() {
    controller.addListener(emitPathChanged);
  }

  @override
  InputPath get path => InputPath(
    text: controller.text,
  );

  @override
  void setStateMap(Map<String, dynamic> state) {
    controller.text = state['text'] ?? '';
  }
}
