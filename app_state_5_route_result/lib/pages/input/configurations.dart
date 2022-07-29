import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../../router/tab_enum.dart';
import '../about/configurations.dart';

class InputPageConfiguration extends PageConfiguration {
  static const _location = '/input';

  const InputPageConfiguration() : super(key: 'Input');

  @override
  String get location => _location;

  static InputPageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const InputPageConfiguration()
        : null;
  }

  @override
  get defaultStackConfigurations => [
    const AboutPageConfiguration(),
    this,
  ];

  @override
  String get defaultStackKey => TabEnum.about.name;
}
