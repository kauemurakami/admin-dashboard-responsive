import 'package:admin_dashboard/features/main/widgets/profile_card.dart';
import 'package:admin_dashboard/features/main/widgets/search.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: SearchWidget(),
        ),
        ProfileCardWidget()
      ],
    );
  }
}
