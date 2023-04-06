import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/card_image.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class CardRecentImage extends StatelessWidget {
  const CardRecentImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      width: 400,
      decoration: BoxDecoration(
          color: cardFavoriteColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: shadowColor.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2 Images',
            style: TextStyle(
              color: textColor,
              fontSize: 18,
            ),
          ),
          Row(
            children: [
              Text(
                'Local',
                style: TextStyle(color: textColor, fontSize: 16),
              ),
              Icon(
                Icons.chevron_right,
                color: textColor,
              ),
              Text(
                'Photos',
                style: TextStyle(color: textColor, fontSize: 16),
              ),
              Icon(
                Icons.chevron_right,
                color: textColor,
              ),
              Text(
                'Latest',
                style: TextStyle(color: textColor, fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CardImage(
                assets: 'assets/image/flowers.png',
              ),
              CardImage(
                assets: 'assets/image/flowers.png',
              )
            ],
          )
        ],
      ),
    );
  }
}
