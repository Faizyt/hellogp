import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogp/app/ui/utils/constant/colors.dart';
import 'package:sizer/sizer.dart';
import '../../../controllers/login_controller.dart';
import '../../global_widgets/customredbutton.dart';
import '../../global_widgets/customtextfield.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // elevation: 2,
        flexibleSpace: PreferredSize(
          preferredSize: Size.fromHeight(10.h),
          child: Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 6.w,
                right: 6.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/logoIcon.png',
                      // width: 512,
                      // height: 108,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Login to your Account',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  CustomTextFiled(
                      hint: 'Enter your email',
                      controller: controller.emailController),
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  CustomTextFiled(
                      hint: 'At least 8 characters',
                      controller: controller.passwordController),
                  SizedBox(
                    height: 0.5.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 1.w,
                right: 5.w,
              ),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: AppColors.primaryColor,
                    value: true,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 0.1.w,
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Container(
              width: 100.w,
              height: 7.h,
              margin: EdgeInsets.only(
                left: 5.w,
                right: 5.w,
              ),
              child: CustomRedButton(
                text: 'Login',
                onPressed: () {
                  Get.toNamed('/home');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 13.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}




