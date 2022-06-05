import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
