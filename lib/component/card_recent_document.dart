import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/card_image.dart';
import 'package:zul_file_manager/component/item_recent_documents.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class CardRecentDocument extends StatelessWidget {
  final itemsRecents;
  final Function callbackAdd;
  const CardRecentDocument(
      {Key? key, required this.itemsRecents, required this.callbackAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
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
          Row(
            children: [
              Text(
                '${itemsRecents.length} Documents',
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    callbackAdd();
                  },
                  child: Text(
                    'Add Documents',
                    style: TextStyle(
                      color: orangeColor,
                      fontSize: 16,
                    ),
                  )),
            ],
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
          for (var item in itemsRecents) ...[
            ItemRecentDocument(
              fileName: item['filename'],
              formatAndSize: item['format_and_size'],
            ),
          ]
        ],
      ),
    );
  }
}
