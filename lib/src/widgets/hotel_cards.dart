import 'package:flutter/material.dart';
import 'package:fin/src/models/hotel.dart';

import 'hotelcard.dart';
import 'hoteldetails.dart';

//impoter la page d'échantillon hotel
class HotelCards extends StatefulWidget {
  @override
  _HotelCardsState createState() => _HotelCardsState();
}

class _HotelCardsState extends State<HotelCards> {
  List<Hotel> hotels = [
    Hotel(
      image: 'sechel.jpg',
      price: 6500,
      title: "Sechel",
      email: "dfghj@ghjk.ds",
      phonenumber: "08888888",
    ),
    Hotel(
      image: 'marhaba.jpg',
      price: 7000,
      title: "Marhaba",
      email: "dfghj@ghjk.ds",
      phonenumber: "08888888",
    ),
    Hotel(
      image: 'boustane.jpg',
      price: 7000,
      title: "Boustane",
      email: "dfghj@ghjk.ds",
      phonenumber: "08888888",
    ),
    Hotel(
      image: 'elhana.jpg',
      price: 4000,
      title: "Elhana",
      email: "dfghj@ghjk.ds",
      phonenumber: "08888888",
    ),
    Hotel(
      image: 'rania.jpg',
      price: 7000,
      title: "Rania",
      email: "dfghj@ghjk.ds",
      phonenumber: "08888888",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Liste Des Hotels'),
        ),
        body: ListView.builder(
            
            scrollDirection: Axis.vertical,
            itemCount: hotels.length,
            itemBuilder: (_, index) {
              return HotelCard(
                image: hotels[index].image,
                price: hotels[index].price,
                title: hotels[index].title,
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => HotelDetailPage(
                                hotel: hotels[index],
                              )));
                },
              );
            }));
  }
}
