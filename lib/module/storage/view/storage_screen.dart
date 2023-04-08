import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/item_storage_statistics.dart';
import 'package:zul_file_manager/component/item_total_space.dart';
import 'package:zul_file_manager/component/title_text.dart';
import 'package:zul_file_manager/component/top_menu.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          TopMenu(
            callback: () {
              return Navigator.pop(context);
            },
            iconLeft: Icon(
              Icons.arrow_back,
              color: primaryColor,
              size: 30,
            ),
            iconRight: Icon(
              Icons.more_vert,
              color: primaryColor,
              size: 30,
            ),
          ),
          TitleText(title: 'Storage'),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 350,
              height: 300,
              margin: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 0),
                      color: shadowColor.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: 78,
                          left: 65,
                          child: Text(
                            '78%',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: CircularProgressIndicator(
                          value: 0.8,
                          strokeWidth: 5,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemTotalSpace(
                        title: 'Total Space',
                        description: '2 GB',
                        colorIcon: primaryColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ItemTotalSpace(
                        title: 'Space Used',
                        description: '1 GB',
                        colorIcon: Colors.blue,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ItemStorageStatistics(
            titleItem: 'Images',
            assets: 'assets/icon/photo.png',
            backgroundIconColor: redColor,
            totalFiles: '5 files',
            totalSize: '17,5 MB',
            progressBarColor: redColor,
          ),
          ItemStorageStatistics(
            titleItem: 'Videos',
            assets: 'assets/icon/icon_play_video.png',
            backgroundIconColor: cyanColor,
            totalFiles: '17 files',
            totalSize: '21,5 MB',
            progressBarColor: cyanColor,
          ),
        ],
      )),
    );
  }
}
