import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/progress_bar.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class ItemStorageStatistics extends StatelessWidget {
  final String assets;
  final Color backgroundIconColor;
  final String totalFiles;
  final String totalSize;
  final String titleItem;
  final Color progressBarColor;
  const ItemStorageStatistics(
      {Key? key,
      required this.titleItem,
      required this.assets,
      required this.backgroundIconColor,
      required this.totalFiles,
      required this.totalSize,
      required this.progressBarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15),
          width: circleFavoriteCardIcon,
          height: circleFavoriteCardIcon,
          decoration: BoxDecoration(
              color: backgroundIconColor.withOpacity(0.7),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 3),
                  color: shadowColor.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              assets,
              height: 10,
              width: 10,
            ),
          ),
        ),
        Flexible(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    totalSize,
                    style: const TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    totalFiles,
                    style: const TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ))
              ],
            ),
            ProgressBar(progressbarColor: progressBarColor)
          ],
        ))
      ],
    );
  }
}
