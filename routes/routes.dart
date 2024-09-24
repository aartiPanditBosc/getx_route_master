import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:streetwise/routes/routes_name.dart';
import 'package:streetwise/views/sample_screen/sample_screen.dart';

class Routes {
  Routes._();
  static final Routes instance = Routes._();

  List<GetPage> getGetXPages() {
    return [
      GetPage(
        name: RoutesName.sample,
        page: () => const SampleScreen(),
        transition: Transition.fadeIn,
        // binding: Binding(),
      ),
    ];
  }
}
