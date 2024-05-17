import 'package:dashboard/stores/store_stats.dart';
import 'package:dashboard/stores/user_list.dart';
import 'package:flutter/material.dart';

class StoreDashboard extends StatelessWidget {
  const StoreDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: StoreStats()
                ),
                SizedBox(height: 20),
                Flexible(
                  child: UserList()
                ),
                SizedBox(height: 20)
              ],
            ),
          )
        ),
        // lead panel
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.blue
          ),
        )
      ],
    );
  }
}