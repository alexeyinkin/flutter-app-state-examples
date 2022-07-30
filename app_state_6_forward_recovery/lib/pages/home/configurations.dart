import 'package:app_state/app_state.dart';
import 'package:flutter/widgets.dart';

class HomePageConfiguration extends PageConfiguration {
  static const _location = '/';

  const HomePageConfiguration() : super(key: 'Home');

  @override
  String get location => _location;
}
