import 'package:flutter/material.dart';
import 'package:foodapp/screens/home.dart';
import 'constant.dart';
import 'screens/product.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            // ignore: deprecated_member_use
            body1: TextStyle(color: kSecondaryColor),
            // ignore: deprecated_member_use
            body2: TextStyle(color: kSecondaryColor),
          )
      ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home' : (context) => HomeScreen(),
        '/product': (context) => Product()
      },
    );
  }
}
