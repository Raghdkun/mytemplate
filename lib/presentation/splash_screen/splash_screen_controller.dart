import 'package:get/get.dart';
import 'package:mytemplate/core/services/service.dart';
import 'package:mytemplate/routes/app_route.dart';

class SplashScreenController extends GetxController {
  MyServices myServices = Get.find();

  initialPage() async {
    await Future.delayed(const Duration(seconds: 4), () async {
      Get.offAllNamed(AppRoutes.home);
    });
  }

  @override
  void onInit() {
  initialPage(); 
    super.onInit();
  }
}
