import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/data/models/my_files.dart';
import 'package:admin_dashboard/features/main/widgets/card_file_info.dart';
import 'package:flutter/material.dart';

class GridviewFileInfo extends StatelessWidget {
  const GridviewFileInfo({
    super.key,
    this.crossAxisCount = 4,
    this.aspectRatio = 1,
  });
  final int crossAxisCount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => CardFileInfo(
        info: demoMyFiles[index],
      ),
    );
  }
}
