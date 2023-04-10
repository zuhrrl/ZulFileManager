import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class FavoriteCard extends StatelessWidget {
  final String assets;
  final Color backgroundIconColor;
  const FavoriteCard(
      {Key? key, required this.assets, required this.backgroundIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      width: favoriteCardWidth,
      decoration: BoxDecoration(
          color: cardFavoriteColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4, 0),
              color: shadowColor.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 20),
                width: circleFavoriteCardIcon,
                height: circleFavoriteCardIcon,
                decoration: BoxDecoration(
                    color: backgroundIconColor.withOpacity(0.8),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 3),
                        color: shadowColor.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Image.asset(
                    assets,
                    height: 10,
                    width: 10,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color(0xff8c8fa5),
                  ))
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Column(
              children: const [
                Text(
                  'Personal',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('30 Files')
              ],
            ),
          )
        ],
      ),
    );
  }
}
