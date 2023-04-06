import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/progress_bar.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class ItemStorageStatistics extends StatelessWidget {
  final String assets;
  final Color backgroundIconColor;
  const ItemStorageStatistics(
      {Key? key, required this.assets, required this.backgroundIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, top: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            width: circleFavoriteCardIcon,
            height: circleFavoriteCardIcon,
            decoration: BoxDecoration(
                color: backgroundIconColor.withOpacity(0.8),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    color: shadowColor.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  )
                ]),
            child: Padding(
              padding: EdgeInsets.all(7),
              child: Image.asset(
                assets,
                height: 10,
                width: 10,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Images',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      '1.2 GB',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    width: 182,
                  ),
                  Text(
                    '12,847 files',
                    style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              ProgressBar()
            ],
          )
        ],
      ),
    );
  }
}
