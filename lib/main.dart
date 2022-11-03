import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cowmes/pages/login.dart';
import 'package:cowmes/pages/signup.dart';
import 'package:cowmes/pages/booking/bookingPage.dart';
import 'package:cowmes/pages/home/homePage.dart';
import 'package:cowmes/pages/startPage.dart';
import 'package:cowmes/widgets/navigation.dart';
import 'package:cowmes/widgets/provider_widget.dart';
import 'package:cowmes/services/auth_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: AuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeController(),
        routes: <String, WidgetBuilder>{
          '/signUp': (BuildContext context) =>
              SignUpView(authFormType: AuthFormType.signUp),
          '/signIn': (BuildContext context) =>
              SignUpView(authFormType: AuthFormType.signIn),
          '/home': (BuildContext context) => HomeController(),
        },
      ),
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder<String>(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool signedIn = snapshot.hasData;
          return signedIn ? MainNavBar() : StartPage();
        }
        return CircularProgressIndicator();
      },
    );
  }
}
