import 'package:chiikawamarketapp/chiikawa_market.dart';
import 'package:chiikawamarketapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// int count = 0;
late SharedPreferences prefs;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    GetMaterialApp(
      title: '치이카와 마켓',
      initialRoute: '/',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Color(0xff212123),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff212123)
      ),
      home: ChiikawaMarket(),
      getPages: [
        GetPage(name: '/', page: () => const ChiikawaMarket()),
      ],
    ),
  );
}
