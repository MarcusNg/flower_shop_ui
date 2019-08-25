import 'package:flower_shop_ui/widgets/categories.dart';
import 'package:flower_shop_ui/widgets/plant_card.dart';
import 'package:flower_shop_ui/widgets/popular_flowers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'THE FLOWER SHOP',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.0,
          ),
        ),
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PopularFlowers(),
              Categories(),
              PlantCard(),
              PlantCard(),
              PlantCard(),
              PlantCard(),
            ],
          ),
        ),
      ),
    );
  }
}
