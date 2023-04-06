import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class ItemRecentDocument extends StatelessWidget {
  final String fileName;
  final String formatAndSize;
  const ItemRecentDocument(
      {Key? key, required this.fileName, required this.formatAndSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 0, top: 10),
          width: circleFavoriteCardIcon,
          height: circleFavoriteCardIcon,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  color: shadowColor.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              ]),
          child: Icon(
            Icons.file_copy,
            color: circleIconColor,
            size: iconFavoriteSize,
          ),
        ),
        Flexible(
            child: Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          child: Text(
            fileName,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15, color: textColor, fontWeight: FontWeight.bold),
          ),
        ))
      ],
    );
  }
}
