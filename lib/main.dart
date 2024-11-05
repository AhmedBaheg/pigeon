import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pigeon/core/utils/app_router.dart';

void main() {
  runApp(const Pigeon());
}

class Pigeon extends StatelessWidget {
  const Pigeon({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
