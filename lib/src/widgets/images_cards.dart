import 'package:flutter/material.dart';
import 'package:fin/src/models/places.dart';

import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
 List<Place> places = [
  Place(place: 'El_Ghicha', image: 'ghicha1.jpg', days: 1),
   Place(place: 'Ain_Madhi', image: 'ain_madhi.jpg', days: 12),
   Place(place: 'Rally_laghouat', image: 'slide.jpg', days: 3),

 ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                days: places[index].days,
                picture: places[index].image,
              );
            }));
  }
}


