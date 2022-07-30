import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import 'page.dart';
import '../home/configurations.dart';

class InputPageConfiguration extends PageConfiguration {
  static const _location = '/input';

  final String text;

  InputPageConfiguration({
    required this.text,
  }) : super(
    key: 'Input',
    factoryKey: InputPage.classFactoryKey,
    state: {'text': text},
  );

  @override
  get location => _location;

  static InputPageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? InputPageConfiguration(text: '')
        : null;
  }

  @override
  get defaultStackConfigurations => [
    const HomePageConfiguration(),
    this,
  ];
}
