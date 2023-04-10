import 'package:flutter/material.dart';
import 'package:zul_file_manager/component/item_recent_documents.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class CardRecentDocument extends StatelessWidget {
  final dynamic itemsRecents;
  final Function callbackAdd;
  const CardRecentDocument(
      {Key? key, required this.itemsRecents, required this.callbackAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          color: cardFavoriteColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
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
                style: const TextStyle(
                  color: textColor,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    callbackAdd();
                  },
                  child: const Text(
                    'Add Documents',
                    style: TextStyle(
                      color: orangeColor,
                      fontSize: 16,
                    ),
                  )),
            ],
          ),
          Row(
            children: const [
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
