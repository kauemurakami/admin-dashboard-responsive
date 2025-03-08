import 'package:admin_dashboard/features/main/provider.dart';
import 'package:admin_dashboard/features/main/widgets/dashboard_section.dart';
import 'package:admin_dashboard/features/main/widgets/side_menu.dart';
import 'package:admin_dashboard/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MainProvider>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) SideMenu(),
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
