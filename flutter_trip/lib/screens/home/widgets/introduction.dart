import 'package:flutter/material.dart';
import 'package:flutter_trip/models/destination.dart';
import 'package:flutter_trip/style.dart';

class Introduction extends StatelessWidget {
  final Destination _destinationObj;

  Introduction(this._destinationObj);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20
      ),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10
                ),
                child: Text(
                  _destinationObj.introTitle,
                  style: TextStyle(
                      color: greenText,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                _destinationObj.introDescription,
                style: TextStyle(
                    fontSize: 12
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}