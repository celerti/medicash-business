import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final double size;
  const CardImage({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(left: 10),
      height: size,
      width: size,
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