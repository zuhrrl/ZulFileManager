import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/item_storage_statistics.dart';
import 'package:zul_file_manager/component/title_text.dart';
import 'package:zul_file_manager/component/top_menu.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class StorageScreen extends StatefulWidget {
  StorageScreen({Key? key}) : super(key: key);

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          TopMenu(
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
          ItemStorageStatistics(
              assets: 'assets/icon/photo.png', backgroundIconColor: redColor)
        ],
      )),
    );
  }
}
