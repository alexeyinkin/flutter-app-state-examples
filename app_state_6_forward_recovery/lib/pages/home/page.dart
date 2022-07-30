import 'package:app_state/app_state.dart';
import 'package:flutter/foundation.dart';

import 'configurations.dart';
import 'screen.dart';

class HomePage extends StatelessMaterialPage {
  static const classFactoryKey = 'Home';

  HomePage() : super(
    key: const ValueKey(classFactoryKey),
    child: HomeScreen(),
    factoryKey: classFactoryKey,
    configuration: const HomePageConfiguration(),
  );
}
