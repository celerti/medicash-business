import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(left: 10),
      height: 150,
      width: 150,
      child: const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image(
          image: AssetImage("images/image_asset1.jpg"),
          fit: BoxFit.none,
        ),
      )
    );
  }
}