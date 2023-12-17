import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogp/app/ui/pages/addfamilymember_page/addfamilymember_page.dart';

class AddfamilymemberController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController doB = TextEditingController();
  var selectGender = Rx<Gender>(Gender.male);
  var selectedRelation = RxString('brother');
}
