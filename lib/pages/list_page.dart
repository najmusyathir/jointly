import 'package:flutter/material.dart';
import 'package:jointly/pages/activity_list_page.dart';
import 'package:jointly/pages/todo_list_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            const TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("To-Do"),
                ),
                Tab(
                  child: Text('Activity'),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                height: 500,
                child: const TabBarView(
                  children: <Widget>[
                    Center(
                      child:
                        TodoListPage(),
                    ),
                    Center(
                      child: ActivityListPage(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
