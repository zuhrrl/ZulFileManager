import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class TopMenu extends StatelessWidget {
  final Widget iconLeft;
  final Widget iconRight;
  const TopMenu({Key? key, required this.iconLeft, required this.iconRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: iconLeft),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 15, top: 15),
          child: iconRight,
        )
      ],
    );
  }
}
