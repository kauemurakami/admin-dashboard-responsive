import 'package:admin_dashboard/features/main/widgets/dashboard_section.dart';
import 'package:admin_dashboard/features/main/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SideMenu(),
            Expanded(
              // 5/6 part of the screen
              flex: 5,
              child: DashboardSectionWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
