import 'package:cowmes/models/booking.dart';
import 'package:cowmes/pages/booking/bookingSummaryPage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmes/constants.dart';

class BookingPage extends StatefulWidget {
  final Booking booking;
  BookingPage({Key key, @required this.booking}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  TextEditingController _address = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController _postcode = TextEditingController();
  TextEditingController _note = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _name = TextEditingController();
  DateTime _date = DateTime.now();

  final _key = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    _address.text = widget.booking.address;
    _city.text = widget.booking.city;
    _state.text = widget.booking.state;
    _postcode.text = widget.booking.postcode;
    _note.text = widget.booking.notes;
    _phone.text = widget.booking.phone;
    _name.text = widget.booking.name;

    return Scaffold(
      backgroundColor: kPrimaryColor2,
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
        title: Text("Make Booking"),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(18.0),
            children: <Widget>[
              Container(
                height: 230,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: kSecondaryColor2,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        nameInput(label: "Name"),
                        phoneInput(label: "Phone No."),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 330,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: kSecondaryColor2,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        addressInput(label: "Address"),
                        cityInput(label: "City"),
                        StatePostcode(label1: "State", label2: "Postcode"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 380,
                height: 150,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: kSecondaryColor2,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 18,
                              color: kPrimaryColor2,
                              fontWeight: FontWeight.bold),
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            _date == null
                                ? 'Please Picked Date'
                                : '${_date.day}.${_date.month}.${_date.year}',
                            style:
                                TextStyle(color: kPrimaryColor2, fontSize: 18),
                          ),
                          minWidth: double.infinity,
                          onPressed: () {
                            widget.booking.selectedDate = _date;

                            showDatePicker(
                                    context: context,
                                    initialDate:
                                        _date == null ? DateTime.now() : _date,
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2021))
                                .then((date) {
                              setState(() {
                                _date = date;
                              });
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: kSecondaryColor2,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[notedInput(label: "Note")],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: MaterialButton(
                  minWidth: 380,
                  height: 60,
                  onPressed: () {
                    widget.booking.address = _address.text;
                    widget.booking.state = _state.text;
                    widget.booking.city = _city.text;
                    widget.booking.selectedDate = _date;
                    widget.booking.notes = _note.text;
                    widget.booking.postcode = _postcode.text;
                    widget.booking.phone = _phone.text;
                    widget.booking.name = _name.text;

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BookingSummary(booking: widget.booking)));
                  },
                  color: kSecondaryColor2,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Booked Now",
                    style: TextStyle(
                        color: kPrimaryColor2,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget nameInput({label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _name,
          style: TextStyle(color: kPrimaryColor2),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget addressInput({label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _address,
          style: TextStyle(color: kPrimaryColor2),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget phoneInput({label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _phone,
          style: TextStyle(color: kPrimaryColor2),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget cityInput({label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _city,
          style: TextStyle(color: kPrimaryColor2),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget StatePostcode({label1, label2}) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label1,
                    style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor2,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: TextField(
                      controller: _state,
                      style: TextStyle(color: kPrimaryColor2),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label2,
                    style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor2,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _postcode,
                    style: TextStyle(color: kPrimaryColor2),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget notedInput({label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 18, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: _note,
          maxLines: 4,
          style: TextStyle(color: kPrimaryColor2),
          decoration: InputDecoration(
            hintText: "Please write note here",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
