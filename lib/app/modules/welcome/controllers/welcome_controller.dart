import 'package:doto_app_test/app/core/services/base/preferences.dart';
import 'package:doto_app_test/app/routes/app_pages.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  onGetStared() {
    // route change
    Get.offAllNamed(Routes.ENTRY_POINT);
    // Store the value (User is not new)
    Preferences.isFirstTime = false;
  }
}
