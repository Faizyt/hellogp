import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellogp/app/routes/pages.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          getPages: Pages().routes,
          debugShowCheckedModeBanner: false,
          title: 'HelloGP',
          theme: ThemeData(
            // colorScheme: AppColors,
            useMaterial3: true,
            fontFamily: GoogleFonts.montserrat().fontFamily,
          ),
          initialRoute: Pages.login,
        );
      },
    );
  }
}
