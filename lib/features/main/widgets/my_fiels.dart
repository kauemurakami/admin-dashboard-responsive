import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/features/main/widgets/gridview_file_info.dart';
import 'package:admin_dashboard/widgets/responsive.dart';
import 'package:flutter/material.dart';

class MyFielsSection extends StatelessWidget {
  const MyFielsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.sizeOf(context);
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
                padding: WidgetStatePropertyAll<EdgeInsets?>(
                  EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll<Color?>(AppColors.primaryColor),
                shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0))),
                ),
                iconColor: WidgetStatePropertyAll<Color?>(Colors.white),
              ),
            )
          ],
        ),
        Responsive(
          mobile: GridviewFileInfo(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            aspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: GridviewFileInfo(),
          desktop: GridviewFileInfo(
            aspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            crossAxisCount: _size.width <= 1140 ? 2 : 4,
          ),
        ),
      ],
    );
  }
}
