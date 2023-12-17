
import 'package:get/get.dart';
import '../controllers/addfamilymember_controller.dart';


class AddfamilymemberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddfamilymemberController>(() => AddfamilymemberController());
  }
}