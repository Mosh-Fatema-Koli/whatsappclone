import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/route/route.dart';
import 'package:whatsappclone/view/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          primaryColor: Color(0xff05e54),
          bottomAppBarColor: Colors.green,
          accentColor: Colors.green),
      getPages: getPages,
      initialRoute: homeScreen,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
