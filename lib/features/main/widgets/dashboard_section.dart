import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/features/main/widgets/dash_header.dart';
import 'package:admin_dashboard/features/main/widgets/my_fiels.dart';
import 'package:admin_dashboard/features/main/widgets/recent_files_section.dart';
import 'package:admin_dashboard/features/main/widgets/storage_section.dart';
import 'package:flutter/material.dart';

class DashboardSectionWidget extends StatelessWidget {
  const DashboardSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DashboardHeader(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.0,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    spacing: defaultPadding,
                    children: [
                      MyFielsSection(),
                      RecentFilesSection(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: StorageSection(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
