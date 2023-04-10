import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, color: textColor),
      ),
    );
  }
}
