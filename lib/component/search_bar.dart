import 'package:flutter/material.dart';
import 'package:zul_file_manager/constant/app_constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: searchBarHeight,
      decoration: BoxDecoration(
          color: searchColor,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: hintColor),
            suffixIcon: Icon(
              Icons.search,
              color: hintColor,
            )),
      ),
    );
  }
}
