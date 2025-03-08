import 'package:admin_dashboard/data/models/my_files.dart';
import 'package:flutter/material.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({super.key, required this.info});
  final CloudStorageInfo info;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5.0,
          decoration: BoxDecoration(
            color: info.color!.withValues(alpha: .1),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (info.percentage! / 100),
            height: 5.0,
            decoration: BoxDecoration(
              color: info.color!,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
      ],
    );
  }
}
