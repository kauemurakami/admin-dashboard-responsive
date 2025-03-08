import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:admin_dashboard/core/constants/sizes.dart';
import 'package:admin_dashboard/data/models/my_files.dart';
import 'package:admin_dashboard/features/main/widgets/progress_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardFileInfo extends StatelessWidget {
  const CardFileInfo({super.key, required this.info});
  final CloudStorageInfo info;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * .75),
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: info.color!.withValues(alpha: .1),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  colorFilter: ColorFilter.mode(info.color!, BlendMode.srcIn),
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(info: info),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 4.0,
            children: [
              Text(
                '${info.numOfFiles} Files',
                style: TextTheme.of(context).labelSmall!.copyWith(
                      color: Colors.white70,
                    ),
              ),
              Text(
                info.totalStorage!,
                style: TextTheme.of(context).labelSmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
