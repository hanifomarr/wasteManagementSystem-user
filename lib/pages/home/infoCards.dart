import 'package:cowmes/constants.dart';
import 'package:flutter/material.dart';

class infoCards extends StatelessWidget {
  const infoCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/banner1.png",
                category: "",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/banner3.png",
                category: "",
                numOfBrands: 24,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/banner2.png",
                category: "",
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 390,
          height: 160,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
