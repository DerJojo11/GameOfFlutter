import 'package:flutter/material.dart';

class ListLoadingIndicator extends StatelessWidget {
  const ListLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
