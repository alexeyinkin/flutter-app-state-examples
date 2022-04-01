import 'package:app_state/app_state.dart';

class InputSaveEvent extends PageBlocCloseEvent {
  final String name;

  InputSaveEvent({required this.name});
}

class InputErrorEvent extends PageBlocEvent {
  final String message;

  InputErrorEvent({required this.message});
}
