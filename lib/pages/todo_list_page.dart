import 'package:flutter/material.dart';

void userDoubleTapped() {}

void userLongPress() {}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key, required this.name, required this.desc});

  final String name;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/todoDetailsPage');
          },
          onDoubleTap: userDoubleTapped,
          onLongPress: userLongPress,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blueAccent)),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.left,
                ),
                Text(
                  desc,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              Text(
                "To-DO Page",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          ToDoList(name: 'Running', desc: 'Run for your life'),
          ToDoList(name: 'Walking', desc: 'Walk and enjoy the views'),
          ToDoList(
              name: 'Crawling',
              desc: 'Crawl if you want to survive'),
          ToDoList(name: 'Sleep', desc: 'Sleep like you are already dead.'),
          ToDoList(name: 'Sleep', desc: 'Sleep like you are already dead.'),
          ToDoList(name: 'Sleep', desc: 'Sleep like you are already dead.'),
          ToDoList(name: 'Sleep', desc: 'Sleep like you are already dead.'),
          ToDoList(name: 'Sleep', desc: 'Sleep like you are already dead.'),
        ],
      ),
    );
  }
}
