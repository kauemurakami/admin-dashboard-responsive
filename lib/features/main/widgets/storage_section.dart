import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/features/main/widgets/card_storage_info.dart';
import 'package:admin_dashboard/features/main/widgets/chart.dart';
import 'package:flutter/material.dart';

class StorageSection extends StatelessWidget {
  const StorageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.0,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          ChartWidget(),
          CardStorageInfo(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Document Files',
            numOfFiles: 1329,
            amountOfFiles: "1.3GB",
          ),
          CardStorageInfo(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
            numOfFiles: 1328,
            amountOfFiles: "15.3GB",
          ),
          CardStorageInfo(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
            numOfFiles: 1328,
            amountOfFiles: "1.3GB",
          ),
          CardStorageInfo(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown',
            numOfFiles: 140,
            amountOfFiles: "1.3GB",
          ),
        ],
      ),
    );
  }
}
