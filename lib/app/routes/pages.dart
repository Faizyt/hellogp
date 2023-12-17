import 'package:get/get.dart';
import 'package:hellogp/app/bindings/addfamilymember_binding.dart';
import 'package:hellogp/app/bindings/profile_binding.dart';
import 'package:hellogp/app/bindings/userprofile_binding.dart';
import 'package:hellogp/app/ui/pages/addfamilymember_page/addfamilymember_page.dart';
import 'package:hellogp/app/ui/pages/login_page/login_page.dart';
import 'package:hellogp/app/ui/pages/profile_page/profile_page.dart';
import 'package:hellogp/app/ui/pages/userprofile_page/userprofile_page.dart';

import '../bindings/login_binding.dart';

class Pages {
  static const String home = '/home';
  static const String login = '/login';
  static const String profile = '/profile';

  static const String addFamilyMember = '/addFamilyMember';
  var routes = [
    // GetPage(name: home, page: () => null),
    GetPage(
        name: login,
        page: () => const LoginPage(),
        binding: LoginBinding(),
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.fadeIn),
    GetPage(
        name: home,
        page: () => HomePage(),
        binding: HomePageBinding(),
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.zoom),
    GetPage(
        name: profile,
        page: () => const UserProfilePage(),
        binding: UserprofileBinding(),
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.leftToRight),
    GetPage(
        name: addFamilyMember,
        page: () => const AddFamilyMemberPage(),
        binding: AddfamilymemberBinding(),
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.rightToLeft),
  ];
}
