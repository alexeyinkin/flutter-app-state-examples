import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import 'configurations.dart';
import 'events.dart';

class InputPageBloc extends PageStatefulBloc<InputPageConfiguration, InputPageBlocState> {
  final nameController = TextEditingController();
  final initialState = InputPageBlocState(canSave: false);

  InputPageBloc({
    required String name,
  }) {
    nameController.text = name;
    nameController.addListener(emitState);
    emitState();
  }

  void onSavePressed() {
    closeScreenWith(
      InputSaveEvent(name: nameController.text),
    );
  }

  @override
  InputPageBlocState createState() {
    return InputPageBlocState(
      canSave: nameController.text != '',
    );
  }

  @override
  InputPageConfiguration getConfiguration() => const InputPageConfiguration();
}

class InputPageBlocState {
  final bool canSave;

  InputPageBlocState({
    required this.canSave,
  });
}
