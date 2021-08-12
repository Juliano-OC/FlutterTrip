import 'package:flutter/material.dart';
import 'package:flutter_trip/models/destination.dart';
import 'package:flutter_trip/style.dart';

class VisitLocations extends StatelessWidget {
  final Destination _destinationObj;

  VisitLocations(this._destinationObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Fotos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: greenText
                  ),
                )
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildListOfPictures(_destinationObj.destinationPictures).sublist(0, 3)
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildListOfNames(_destinationObj.destinationNames).sublist(0, 3)
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildListOfPictures(_destinationObj.destinationPictures).sublist(3, 6)
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildListOfNames(_destinationObj.destinationNames).sublist(3, 6)
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildListOfPictures(_destinationObj.destinationPictures).sublist(6, 9)
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buildListOfNames(_destinationObj.destinationNames).sublist(6, 9)
            ),

          ],
        ),
      ),
    );
  }


  List<Widget> buildListOfPictures(List<String> pictures) {
    List<Widget> listOfWidgets = [];

    pictures.forEach((element) {
      listOfWidgets.add(
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(element)
              ]
          )
      );
    });

    return listOfWidgets;
  }

  List<Widget> buildListOfNames(List<String> names) {
    List<Widget> listOfWidgets = [];

    names.forEach((element) {
      listOfWidgets.add(
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  element,
                  style: TextStyle(
                      fontSize: 8
                  ),
                )
              ]
          )
      );
    });

    return listOfWidgets;
  }
}