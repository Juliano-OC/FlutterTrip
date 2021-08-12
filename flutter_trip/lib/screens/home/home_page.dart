import 'package:flutter/material.dart';
import 'package:flutter_trip/models/destination.dart';
import 'package:flutter_trip/screens/home/widgets/introduction.dart';
import 'package:flutter_trip/screens/home/widgets/details.dart';
import 'package:flutter_trip/screens/home/widgets/destination.dart';

class HomePage extends StatelessWidget {
  final destination = Destination(
      header: "assets/images/Banner.jpg",
      destinationName: "Paris - França",
      ratings: 32,
      introTitle: "Conheça as maravilhas da capital Francesa",
      introDescription: "É impossível não se render aos encantos de Paris, a bela capital francesa e destino turístico frequentado por milhões de pessoas todos os anos. Vibrante, charmosa, romântica, divertida, além de berço da cultura e da arte, a Cidade Luz, como é chamada, possui uma infindável lista de qualidades.",
      destinationPictures: ["assets/images/foto_1.jpg", "assets/images/foto_2.jpg", "assets/images/foto_3.jpg", "assets/images/foto_4.jpg", "assets/images/foto_5.jpg", "assets/images/foto_6.jpg", "assets/images/foto_7.jpg", "assets/images/foto_8.jpg", "assets/images/foto_9.jpg",],
      destinationNames: ["Musée d'Orsay", "Catedral de Notre-Dame", "Sainte-Chapelle", "Museu do Louvre", "Arco do Triunfo", "Palais Garnier", "Jardim de Luxemburgo", "Seine River", "Torre Eiffel"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Image.asset(destination.header),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TopDetails(destination),
                ),
                Introduction(destination),
                VisitLocations(destination)
              ],
            )
          ],
        ),
      ),
    );
  }
}
