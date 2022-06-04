import 'package:flutter/material.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({required this.house});

  final House house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(house.name),
      ),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
