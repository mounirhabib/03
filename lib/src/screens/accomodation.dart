import 'package:flutter/material.dart' show BuildContext, Colors, SafeArea, Scaffold, State, StatefulWidget, Widget;
import 'package:fin/src/widgets/hotel_cards.dart';

class Accomodation extends StatefulWidget {
  @override
  _AccomodationState createState() => _AccomodationState();
}

class _AccomodationState extends State<Accomodation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

  child: HotelCards(),

      ),
      
    );
  }
}