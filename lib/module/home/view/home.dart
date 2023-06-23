import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zul_file_manager/component/card_favorite.dart';
import 'package:zul_file_manager/component/card_recent_document.dart';
import 'package:zul_file_manager/component/card_recent_images.dart';
import 'package:zul_file_manager/component/item_storage_statistics.dart';
import 'package:zul_file_manager/component/search_bar.dart' as sb;
import 'package:zul_file_manager/component/title_text.dart';
import 'package:zul_file_manager/constant/app_constant.dart';
import 'package:zul_file_manager/module/storage/view/storage_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final itemRecents = [
    {
      'filename': 'proyek_akhir_test_test.dart',
      'format_and_size': 'dart: 120kb'
    }
  ];
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
            const Spacer(),
            const Padding(
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
          margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Files',
                style: TextStyle(fontSize: 25, color: textColor),
              ),
              SizedBox(
                height: 10,
              ),
              sb.SearchBar(),
            ],
          ),
        ),
        Row(
          children: [
            const TitleText(title: 'Storage Statistics'),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StorageScreen()));
                    return;
                  },
                  child: const Text(
                    'See more',
                    style: TextStyle(color: orangeColor),
                  )),
            )
          ],
        ),
        const ItemStorageStatistics(
          titleItem: 'Images',
          assets: 'assets/icon/user.png',
          backgroundIconColor: Colors.blue,
          totalFiles: '5 files',
          totalSize: '10,5 MB',
          progressBarColor: Colors.blue,
        ),
        const TitleText(title: 'Favorites'),
        SizedBox(
            height: favoriteCardHeight,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const FavoriteCard(
                backgroundIconColor: Colors.blue,
                assets: 'assets/icon/fileicon.png',
              ),
            )),
        const TitleText(title: 'Recent Images'),
        const CardRecentImage(),
        const TitleText(title: 'Recent Documents'),
        CardRecentDocument(
          callbackAdd: () {
            var now = DateTime.now();
            var tanggal = DateFormat('dd/MM/yyyy HH:mm:ss').format(now);

            setState(() {
              itemRecents.insert(0, {
                'filename': 'proyek_akhir_tanggal: $tanggal.dart',
                'format_and_size': 'dart: 120kb'
              });
            });
          },
          itemsRecents: itemRecents,
        ),
        const SizedBox(
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
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StorageScreen()));
          return;
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 7,
                blurRadius: 7,
                offset: const Offset(3, 5),
              ),
            ],
          ),
          child: const Icon(
            Icons.storage,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
