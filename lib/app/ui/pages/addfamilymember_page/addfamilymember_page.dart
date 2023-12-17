import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellogp/app/ui/pages/login_page/login_page.dart';
import 'package:hellogp/app/ui/utils/constant/colors.dart';
import 'package:sizer/sizer.dart';
import '../../../controllers/addfamilymember_controller.dart';
import '../../global_widgets/customtextfield.dart';

enum Gender { male, female }

class AddFamilyMemberPage extends GetView<AddfamilymemberController> {
  const AddFamilyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Family Member',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 3.h),
                // add image circle avatar
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    child: Image.asset(
                      'assets/images/Ellipse.png',
                      // width: 512,
                      // height: 108,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Full Name",
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFiled(
                        controller: controller.nameController,
                        hint: "Enter Name")),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "Relation",
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100.w,
                    height: 7.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: Obx(
                      () => DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: controller.selectedRelation.value,
                          onChanged: (String? newValue) {
                            controller.selectedRelation.value = newValue!;
                          },
                          isExpanded: true,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          elevation: 16,
                          items: <String>[
                            'brother',
                            'sister',
                            'mother',
                            'father',
                            'other'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "Phone Number",
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFiled(
                        controller: controller.phoneController,
                        hint: "Enter phone")),
                // add date of birth
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "Date of Birth",
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFiled(
                        controller: controller.doB,
                        hint: "Enter Date of Birth")),
                Text(
                  "Birth Gender",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Obx(
                      () => Radio<Gender>(
                        // color of radio button
                        activeColor: AppColors.primaryColor,
                        value: Gender.male,
                        groupValue: controller.selectGender.value,
                        onChanged: (value) {
                          controller.selectGender.value = value!;
                        },
                      ),
                    ),
                    Obx(() => Text(
                          "Male",
                          style: TextStyle(
                            color: controller.selectGender.value == Gender.male
                                ? AppColors.primaryColor
                                : Colors.black,
                          ),
                        )),
                    Obx(
                      () => Radio<Gender>(
                        // color of radio button
                        activeColor: AppColors.primaryColor,
                        value: Gender.female,
                        groupValue: controller.selectGender.value,
                        onChanged: (value) {
                          controller.selectGender.value = value!;
                        },
                      ),
                    ),
                    Obx(() => Text(
                          "Female",
                          style: TextStyle(
                            color:
                                controller.selectGender.value == Gender.female
                                    ? AppColors.primaryColor
                                    : Colors.black,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 9.h,
                ),
                Center(
                    child: SizedBox(
                  width: 100.w,
                  height: 6.h,
                  child: ElevatedButton(
                    onPressed: () {
                      // Get.to(() => const LoginPage());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Add ',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ));
  }
}
