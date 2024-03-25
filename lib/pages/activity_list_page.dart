import 'package:flutter/material.dart';
import 'package:jointly/widget/list_item.dart';

class ActivityListPage extends StatelessWidget {
  const ActivityListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "Activity Page",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          ListItem(name: 'Running', desc: 'Run for your life'),
          ListItem(name: 'Walking', desc: 'Walk and enjoy the views'),
          ListItem(name: 'Crawling', desc: 'Crawl if you want to survive'),
          ListItem(name: 'Sleep', desc: 'Sleep like you are already dead.'),
        ],
      ),
    );
  }
}
