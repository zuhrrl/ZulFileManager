import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String assets;
  const CardImage({Key? key, required this.assets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(assets),
      ),
    );
  }
}
