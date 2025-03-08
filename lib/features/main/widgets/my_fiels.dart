import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/data/models/my_files.dart';
import 'package:admin_dashboard/features/main/widgets/card_file_info.dart';
import 'package:flutter/material.dart';

class MyFielsSection extends StatelessWidget {
  const MyFielsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text(
                'Add new',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color?>(AppColors.primaryColor),
                shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0))),
                ),
                iconColor: WidgetStatePropertyAll<Color?>(Colors.white),
              ),
            )
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) => CardFileInfo(
            info: demoMyFiles[index],
          ),
        )
      ],
    );
  }
}
