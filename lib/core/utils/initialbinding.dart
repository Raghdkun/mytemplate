import 'package:get/get.dart';
import 'package:mytemplate/core/services/service.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MyServices());
  }
}
