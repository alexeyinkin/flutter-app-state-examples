import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

import '../../router/tab_enum.dart';

class AboutPath extends PagePath {
  static const _location = '/about';

  const AboutPath() : super(key: 'About');

  @override
  String get location => _location;

  static AboutPath? tryParse(RouteInformation ri) {
    return ri.location == _location
        ? const AboutPath()
        : null;
  }

  @override
  String get defaultStackKey => TabEnum.about.name;
}
