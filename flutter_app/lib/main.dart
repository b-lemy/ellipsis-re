
import 'package:flutter/material.dart';
import 'package:flutter_app/logn.dart';
import 'package:get/get.dart';

void main() async {
  

   runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
         debugShowCheckedModeBanner: false,
          title: "ELLipsis",
          themeMode: ThemeMode.dark,
          theme: ThemeData(

            // brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.grey,
            primarySwatch: Colors.red,
          ),
          home:
        LoginPage(),
    );
  }
}


