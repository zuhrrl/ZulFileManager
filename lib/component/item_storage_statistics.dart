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
    return Container(
      margin: EdgeInsets.only(bottom: 15, top: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            width: circleFavoriteCardIcon,
            height: circleFavoriteCardIcon,
            decoration: BoxDecoration(
                color: backgroundIconColor.withOpacity(0.7),
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
              padding: EdgeInsets.all(8),
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
                  titleItem,
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
                      totalSize,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 175,
                  ),
                  Text(
                    totalFiles,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              ProgressBar(
                progressbarColor: progressBarColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
