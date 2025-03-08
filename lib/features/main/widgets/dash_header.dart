import 'package:admin_dashboard/features/main/provider.dart';
import 'package:admin_dashboard/features/main/widgets/profile_card.dart';
import 'package:admin_dashboard/features/main/widgets/search.dart';
import 'package:admin_dashboard/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MainProvider>().controlDrawer,
            icon: Icon(
              Icons.menu,
            ),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: SearchWidget(),
        ),
        ProfileCardWidget()
      ],
    );
  }
}
