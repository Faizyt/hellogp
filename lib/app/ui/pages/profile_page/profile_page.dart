import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellogp/app/ui/pages/userprofile_page/userprofile_page.dart';
import 'package:hellogp/app/ui/utils/constant/colors.dart';
import 'package:sizer/sizer.dart';
import '../../../controllers/profile_controller.dart';
import '../../../controllers/userprofile_controller.dart';
import '../../global_widgets/appbar.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({super.key});
  UserprofileController userprofileController =
      Get.put(UserprofileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/homepagebg.png',
                    fit: BoxFit.cover,
                    height: 100.h,
                    width: 100.w,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 6.w,
                          right: 6.w,
                        ),
                        // height: 100.h,
                        // width: 100.w,
                        margin: EdgeInsets.only(
                          top: 3.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/menu.png',
                              color: Colors.white,
                              // height: 5.h,
                              // width: 5.w,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Hey, Emily!',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 2.5.h,
                            ),
                            Text(
                              'Wanna Book appointment?',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                                width: 100.w,
                                height: 7.h,
                                margin: EdgeInsets.only(
                                  left: 0.w,
                                  right: 5.w,
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'Book Appointment',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 90.h,
                        width: 100.w,
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
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 6.w,
                                right: 6.w,
                              ),
                              child: Text(
                                "You have an upcoming appointment!!",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                // circular avtar image and text and button
                                SizedBox(
                                  width: 5.w,
                                ),
                                CircleAvatar(
                                  radius: 8.w,
                                  backgroundImage: const AssetImage(
                                    'assets/images/doctorperson.png',
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  'Dr. Emma Mia',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),

                                SizedBox(
                                  height: 6.h,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: AppColors.primaryColor),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Attend Now',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            // 2nd row with calender icon and date and also time icon and time with background color
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5.0.w, right: 5.0.w),
                              child: Container(
                                height: 5.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: AppColors.lightPrimaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Image.asset(
                                      'assets/images/calendar.png',
                                      height: 6.h,
                                      width: 6.w,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      'Monday, May 12',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Icon(
                                      Icons.access_time,
                                      color: AppColors.primaryColor,
                                      size: 3.h,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      '11:00 - 12:00 AM',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 6.w,
                                right: 6.w,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Health Articles",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "View All",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // a card with background image and column of text and icons on right side
                            SizedBox(
                              height: 25.h,
                              // width: 90.w,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/cardbg.png',
                                          fit: BoxFit.fill,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 6.w,
                                            right: 6.w,
                                          ),
                                          height: 15.h,
                                          width: 100.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "02 July 2022",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Icon(
                                                    Icons.favorite,
                                                    color: Colors.white,
                                                    size: 3.h,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              Text(
                                                "COVID- 19 Vaccine",
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.5.h,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Official public service announcement on \ncoronavirus from the world health",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Colors.white,
                                                    size: 3.h,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            CustomAppBar(controller: userprofileController),
          ],
        ),
      ),
    );
  }
}
