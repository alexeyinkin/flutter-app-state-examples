import 'package:app_state/app_state.dart';
import 'package:app_state_5_route_result/pages/about/configurations.dart';

import '../input/events.dart';
import '../input/page.dart';
import '../../main.dart';

class AboutPageBloc extends PageStatefulBloc<PageConfiguration, AboutPageBlocState> {
  String _name;
  final AboutPageBlocState initialState;

  AboutPageBloc({
    required String name,
  }) :
      _name = name,
      initialState = AboutPageBlocState(name: name);

  void onLicensePressed() {
    pageStacksBloc.currentStackBloc?.push(
      InputPage(name: _name),
    );
  }

  @override
  void onForegroundClosed(PageBlocCloseEvent event) {
    if (event is InputSaveEvent) {
      _name = event.name;
      emitState();
    }
  }

  @override
  AboutPageBlocState createState() {
    return AboutPageBlocState(name: _name);
  }

  @override
  AboutPageConfiguration getConfiguration() => AboutPageConfiguration();
}

class AboutPageBlocState {
  final String name;

  const AboutPageBlocState({
    required this.name,
  });
}
