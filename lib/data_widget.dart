import 'package:flutter/material.dart';

class DataWidget extends StatelessWidget {
  final String name;
  final String email;
  final String number;

  const DataWidget(
      {super.key,
      required this.name,
      required this.email,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('name:$name'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('email:$email'),
              Text('number:$number'),
            ],
          ),
        ),
        const Divider(
          thickness: 3,
        ),
      ],
    );
  }
}
