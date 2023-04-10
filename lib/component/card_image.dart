import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String assets;
  const CardImage({Key? key, required this.assets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      width: 165,
      height: 150.0,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(assets)),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}
