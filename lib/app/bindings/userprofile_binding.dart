
import 'package:get/get.dart';
import '../controllers/userprofile_controller.dart';


class UserprofileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserprofileController>(() => UserprofileController());
  }
}