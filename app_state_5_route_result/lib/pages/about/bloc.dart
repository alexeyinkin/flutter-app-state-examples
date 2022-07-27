import 'package:app_state/app_state.dart';
import 'package:app_state_5_route_result/pages/about/configurations.dart';

import '../input/page.dart';
import '../../main.dart';

class AboutPageBloc extends PageStatefulBloc<PageConfiguration, AboutPageBlocState, void> {
  String _name;
  final AboutPageBlocState initialState;

  AboutPageBloc({
    required String name,
  }) :
      _name = name,
      initialState = AboutPageBlocState(name: name);

  Future<void> onLicensePressed() async {
    final result = await pageStacksBloc.currentStackBloc?.push(
      InputPage(name: _name),
    );

    print('Awaited: $result');
  }

  @override
  void didPopNext(AbstractPage page, PageBlocCloseEvent event) {
    print('didPopNext: ${event.data}');

    final data = event.data;
    if (data is String) {
      _name = data;
      emitState();
    }
  }

  @override
  AboutPageBlocState createState() {
    return AboutPageBlocState(name: _name);
  }

  @override
  AboutPageConfiguration getConfiguration() => const AboutPageConfiguration();
}

class AboutPageBlocState {
  final String name;

  const AboutPageBlocState({
    required this.name,
  });
}
