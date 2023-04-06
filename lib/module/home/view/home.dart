import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/card_favorite.dart';
import 'package:zul_file_manager/component/card_recent_document.dart';
import 'package:zul_file_manager/component/card_recent_images.dart';
import 'package:zul_file_manager/component/item_storage_statistics.dart';
import 'package:zul_file_manager/component/search_bar.dart';
import 'package:zul_file_manager/component/title_text.dart';
import 'package:zul_file_manager/constant/app_constant.dart';
import 'package:zul_file_manager/module/storage/view/storage_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getBodyWidget() {
    return ListView(
      shrinkWrap: true,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icon/menu.png',
                  color: primaryColor,
                  height: 25,
                  width: 25,
                )),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 15, top: 15),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/image/user.png'),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Files',
                style: TextStyle(fontSize: 25, color: textColor),
              ),
              SizedBox(
                height: 10,
              ),
              SearchBar(),
            ],
          ),
        ),
        Row(
          children: [
            TitleText(title: 'Storage Statistics'),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StorageScreen()));
                    return;
                  },
                  child: Text(
                    'See more',
                    style: TextStyle(color: orangeColor),
                  )),
            )
          ],
        ),
        ItemStorageStatistics(
            assets: 'assets/icon/user.png', backgroundIconColor: Colors.blue),
        TitleText(title: 'Favorites'),
        SizedBox(
            height: favoriteCardHeight,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => FavoriteCard(
                backgroundIconColor: Colors.blue,
                assets: 'assets/icon/fileicon.png',
              ),
            )),
        TitleText(title: 'Recent Images'),
        CardRecentImage(),
        TitleText(title: 'Recent Documents'),
        CardRecentDocument(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(child: getBodyWidget()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 7,
                blurRadius: 7,
                offset: Offset(3, 5),
              ),
            ],
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
