import 'package:doto_app_test/app/core/middleware/router_welcome.dart';
import 'package:doto_app_test/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:doto_app_test/app/modules/welcome/views/welcome_view.dart';
import 'package:get/get.dart';

import '../modules/entryPoint/bindings/entry_point_binding.dart';
import '../modules/entryPoint/views/entry_point_view.dart';


// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
      middlewares: [RouteWlcomMiddleware()]
    ),
    GetPage(
      name: _Paths.ENTRY_POINT,
      page: () => const EntryPointView(),
      binding: EntryPointBinding(),
    ),
  ];
}
