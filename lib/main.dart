// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:object_detection/views/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff301E67)),
      appBarTheme: const AppBarTheme(
        color: Color(0xff301E67),
      ),
      scaffoldBackgroundColor: const Color(0xff03001C),
      primaryColor: const Color(0xff03001C),
      secondaryHeaderColor: const Color(0xff301E67),
      iconTheme: const IconThemeData(color: Color(0xffB6EADA)),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.montserrat(color: const Color(0xffB6EADA)),
        bodyMedium: GoogleFonts.sansita(
          fontSize: 14,
          color: const Color(0xffB6EADA),
        ),
        titleSmall: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xffB6EADA)),
        displayLarge: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Color(0xffB6EADA)),
        titleLarge: const TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            color: Color(0xffB6EADA)),
      ),
    ),
    home: const Splash(),
  )); 
}
