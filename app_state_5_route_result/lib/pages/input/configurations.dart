import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../about/configurations.dart';
import '../../router/tab_enum.dart';

class InputPageConfiguration extends PageConfiguration {
  static const _location = '/input';

  const InputPageConfiguration() : super(key: 'Input');

  @override
  RouteInformation restoreRouteInformation() {
    return const RouteInformation(
      location: _location,
    );
  }

  static InputPageConfiguration? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const InputPageConfiguration()
        : null;
  }

  @override
  PageStackConfiguration get defaultStackConfiguration {
    return PageStackConfiguration(
      pageConfigurations: [
        const AboutPageConfiguration(),
        this,
      ],
    );
  }

  @override
  String get defaultStackKey => TabEnum.about.name;
}
