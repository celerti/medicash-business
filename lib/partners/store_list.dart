import 'package:dashboard/partners/list_item.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  const StoreList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return const ListItem();
        }
      ),
    );
  }
}