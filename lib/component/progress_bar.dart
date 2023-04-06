import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: 295,
          margin: EdgeInsets.only(left: 15, top: 6),
          padding: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              color: backgroundProgressColor,
              borderRadius: BorderRadius.circular(15)),
        ),
        Container(
            height: 5,
            width: 180,
            margin: EdgeInsets.only(left: 15, top: 5),
            padding: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)))
      ],
    );
  }
}
