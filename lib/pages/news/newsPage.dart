import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';

class newsPage extends StatelessWidget {
  const newsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 0),
          icon: Icon(Icons.arrow_back_ios),
          color: kPrimaryColor2,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "News and Update",
          style: TextStyle(color: kPrimaryColor2),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
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
              image: "assets/banner1.png",
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
            SpecialOfferCard(
              image: "assets/banner3.png",
              category: "",
              numOfBrands: 24,
              press: () {},
            ),
            SpecialOfferCard(
              image: "assets/banner1.png",
              category: "",
              numOfBrands: 24,
              press: () {},
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
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
      padding: EdgeInsets.only(top: 20, left: 21),
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
