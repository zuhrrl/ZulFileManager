import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class ProgressBar extends StatelessWidget {
  final Color progressbarColor;
  const ProgressBar({Key? key, required this.progressbarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthProgress = MediaQuery.of(context).size.width - 85;

    return Stack(
      children: [
        Container(
          height: 5,
          width: widthProgress,
          margin: const EdgeInsets.only(left: 15, top: 6, right: 15),
          padding: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              color: backgroundProgressColor,
              borderRadius: BorderRadius.circular(15)),
        ),
        Container(
            height: 5,
            width: 180,
            margin: const EdgeInsets.only(left: 15, top: 5),
            padding: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: progressbarColor,
                borderRadius: BorderRadius.circular(15)))
      ],
    );
  }
}
