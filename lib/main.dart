import 'package:flutter/material.dart';
import 'package:pet_shop_app/pages/home_page.dart';
import 'package:pet_shop_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';



void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
    ],
    child: const MyApp(),
  ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetShop',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}