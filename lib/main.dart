import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bacterial_growth/petri_dish.dart';

void main() {
  runApp(const BacterialGrowthApp());
}

class BacterialGrowthApp extends StatelessWidget {
  const BacterialGrowthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Flutter Clutter Bacterial Growth',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Bacteria Growth App',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        backgroundColor: Colors.white,
        body: const PetriDish(),
      ),
    );
  }
}
