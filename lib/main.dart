import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:admin_dashboard/features/main/page.dart';
import 'package:admin_dashboard/features/main/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        canvasColor: AppColors.secondaryColor,
      ),
      home: ChangeNotifierProvider(
        create: (context) => MainProvider(),
        child: MainPage(),
      ),
    );
  }
}
