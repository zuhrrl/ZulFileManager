import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class ItemTotalSpace extends StatelessWidget {
  final String title;
  final String description;
  final Color colorIcon;

  const ItemTotalSpace(
      {Key? key,
      required this.title,
      required this.description,
      required this.colorIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(color: hintColor),
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: colorIcon,
              size: 13,
            ),
            Text(
              description,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
