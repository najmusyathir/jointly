import 'package:flutter/material.dart';

class ToDoDetailsPage extends StatelessWidget {
  const ToDoDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('To-Do Details'),
        ),
        body: const Center(
          child: Column(
            children: <Widget>[
              Text('Here is the details')
            ],
          ),
          
        ),
    );
  }
}
