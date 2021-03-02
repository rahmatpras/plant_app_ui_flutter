import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_tyo/components/screens/home/components/featured_plants.dart';
import 'package:plant_app_tyo/components/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app_tyo/components/screens/home/components/recomend_plants.dart';
import 'package:plant_app_tyo/components/screens/home/components/title_with_more_btn.dart';
import 'package:plant_app_tyo/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ini akan memberikan kita total tinggi dan lebar di screen kita
    Size size = MediaQuery.of(context).size;
    // ini agar bisa scrolling di device kecil
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          // ini akan memberikan 40% dari total lebar
          RecomendedsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
