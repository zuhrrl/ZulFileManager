import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/card_image.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class CardRecentDocument extends StatelessWidget {
  const CardRecentDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
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
                'Documents',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        color: shadowColor.withOpacity(0.6),
                        spreadRadius: 3,
                        blurRadius: 7,
                      )
                    ]),
                child: Icon(
                  Icons.file_copy,
                  color: circleIconColor,
                  size: iconFavoriteSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'File testing nganu.docx',
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text('docx: 499 kb')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
