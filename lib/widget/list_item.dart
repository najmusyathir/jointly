import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.name, required this.desc});

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
