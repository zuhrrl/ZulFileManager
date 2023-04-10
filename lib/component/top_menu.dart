import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  final Widget iconLeft;
  final Widget iconRight;
  final Function callback;
  const TopMenu(
      {Key? key,
      required this.iconLeft,
      required this.iconRight,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              callback();
              return;
            },
            icon: iconLeft),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 15),
          child: iconRight,
        )
      ],
    );
  }
}
