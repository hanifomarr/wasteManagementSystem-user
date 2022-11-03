import 'package:cloud_firestore/cloud_firestore.dart';

class Booking {
  String name;
  String address;
  String city;
  String state;
  String postcode;
  String phone;
  DateTime selectedDate;
  String notes;

  Booking(this.name, this.address, this.city, this.state, this.postcode,
      this.selectedDate, this.phone, this.notes);

//  Map<String, dynamic> toJson() => {'address': address, 'city': city};

  Booking.fromSnapshot(DocumentSnapshot snapshot)
      : name = snapshot['name'],
        address = snapshot['address'],
        city = snapshot['city'],
        state = snapshot['state'],
        postcode = snapshot['postcode'],
        phone = snapshot['phone'],
        selectedDate = snapshot['selectedDate'],
        notes = snapshot['notes'];
}
