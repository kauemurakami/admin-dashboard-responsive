import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/data/models/recent_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFilesSection extends StatelessWidget {
  const RecentFilesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: .0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text('File name'),
                ),
                DataColumn(
                  label: Text('Date'),
                ),
                DataColumn(
                  label: Text('Size'),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile file) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            spacing: defaultPadding,
            children: [
              SvgPicture.asset(
                file.icon!,
                height: 30.0,
                width: 30.0,
              ),
              Text(file.title!)
            ],
          ),
        ),
        DataCell(Text(file.date!)),
        DataCell(Text(file.size!)),
      ],
    );
  }
}
