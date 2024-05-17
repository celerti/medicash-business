import 'package:dashboard/partners/list_item.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  const StoreList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      child: Scrollbar(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ListItem();
          }
        ),
      ),
    );
  }
}