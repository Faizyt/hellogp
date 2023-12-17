import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellogp/app/ui/utils/constant/colors.dart';
import 'package:sizer/sizer.dart';
import '../../../controllers/userprofile_controller.dart';
import '../../global_widgets/appbar.dart';

class UserProfilePage extends GetView<UserprofileController> {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/homepagebg.png',
                      fit: BoxFit.cover,
                      height: 100.h,
                      width: 100.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/menu.png',
                                color: Colors.white,
                                // height: 5.h,
                                // width: 5.w,
                              ),
                              Text(
                                'My Profile',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.settings,
                                    color: Colors.white, size: 30),
                                onPressed: () {
                                  Get.toNamed('/editprofile');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(
                                30,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h),
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
                              const Center(
                                child: Text(
                                  "Mathew Adam",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Center(
                                child: Text(
                                  "mathew@email.com",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // make it square
                                    height: 7.h,
                                    width: 11.h,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 1.h),
                                        const Text(
                                          '23y 4m',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 1.h),
                                        const Text(
                                          'Age',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Container(
                                    // make it square
                                    height: 7.h,
                                    width: 11.h,
                                    decoration: BoxDecoration(
                                      // color: Colors.grey,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 1.h),
                                        const Text(
                                          'Male',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 1.h),
                                        const Text(
                                          'Birth Gender',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1.5.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Family Members",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    // add image circle avatar
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: Image.asset(
                                          'assets/images/Ellipse.png',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: Image.asset(
                                          'assets/images/Ellipse.png',
                                        ),
                                      ),
                                    ),
                                    // plus icon circle avatar
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed('/addFamilyMember',

                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                            'assets/images/plus.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1.5.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Past Appointments",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.5.h),
                              SizedBox(
                                height: 30.h,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Container(
                                      // make it like card
                                      // height: 10.h,
                                      // width: 100.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: const Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),

                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Colors.grey,
                                              child: Image.asset(
                                                'assets/images/Ellipse.png',
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              // SizedBox(height: 1.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Dr. Abram George',
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 20.w),
                                                    child: Text(
                                                      '\$ 70',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 1.h),
                                              Row(
                                                children: [
                                                  Container(
                                                    // like label
                                                    height: 3.h,
                                                    width: 15.w,
                                                    decoration: BoxDecoration(
                                                      color: AppColors
                                                          .lightPrimaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(width: 1.w),
                                                        Icon(
                                                          Icons.favorite,
                                                          color: Colors.red,
                                                          size: 15.sp,
                                                        ),
                                                        SizedBox(width: 1.w),
                                                        Text(
                                                          '4.0',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 2.w),
                                                  Text(
                                                    'Submitted',
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: const Color(
                                                          0xFF86022E),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 1.h),
                                              Row(
                                                children: [
                                                  SizedBox(width: 1.w),
                                                  Icon(
                                                    Icons.video_call,
                                                    color: Colors.black,
                                                    size: 12.sp,
                                                  ),
                                                  SizedBox(width: 1.w),
                                                  Text(
                                                    'Video Session',
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(width: 1.w),
                                                  Text(
                                                    'M Shahzaib (Me)',
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(width: 4.w),
                                                  Text(
                                                    'Monday, OCT 20, 08:00 PM',
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 2.h),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.5.h),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            CustomAppBar(controller: controller),
          ],
        ),
      ),
      // bottomNavigationBar:
    );
  }
}

