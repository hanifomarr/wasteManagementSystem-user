import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';
import "dart:math";

class CalculatorRate extends StatefulWidget {
  @override
  _CalculatorRateState createState() => _CalculatorRateState();
}

class _CalculatorRateState extends State<CalculatorRate> {
  String _emiResult = "";

  final TextEditingController _kilogram = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 0),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Recycling Rate",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 180,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: kPrimaryColor2,
                ),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      emiResultsWidget(_emiResult),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  "Weight (kg)",
                  style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                child: TextField(
                  controller: _kilogram,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: kPrimaryColor2,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  ),
                ),
              ),
              Flexible(
                  fit: FlexFit.loose,
                  child: FlatButton(
                      height: 50,
                      minWidth: 350.0,
                      onPressed: _handleCalculation,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Calculate",
                        style: TextStyle(fontSize: 18),
                      ),
                      color: kSecondaryColor2,
                      textColor: kPrimaryColor2,
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 24.0, right: 24.0))),
            ],
          ),
        ),
      ),
    );
  }

  void _handleCalculation() {
    double A = 0.0;
    double P = double.parse(_kilogram.text);
    double n = 1.10;
    A = (P * n);

    _emiResult = A.toStringAsFixed(2);

    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return Container(
        margin: EdgeInsets.only(top: 5),
        child: canShow
            ? Column(children: [
                Text("Your Reward is",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("RM $_emiResult",
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: kSecondaryColor2)))
              ])
            : Container(
                child: Text("Your Reward is",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ));
  }
}
