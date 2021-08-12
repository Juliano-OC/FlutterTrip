import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_trip/models/destination.dart';
import 'package:flutter_trip/style.dart';

class TopDetails extends StatelessWidget {
  final Destination _destinationObj;

  TopDetails(this._destinationObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: greyText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10
                    ),
                    child: Text(
                      _destinationObj.destinationName,
                      style: TextStyle(
                          color: greyText,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: orangeStar,
                      size: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: orangeStar,
                      size: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: orangeStar,
                      size: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: orangeStar,
                      size: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      color: greyText,
                      size: 14,
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "${_destinationObj.ratings} avaliações",
                    style: TextStyle(
                        color: greyText
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

}