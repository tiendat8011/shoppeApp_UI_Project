import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/shoes.dart';
import 'package:shop_app/screens/home/components/skin_care.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';
import 'cloth.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            // SpecialOffers(),
            //SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SkincareProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            ClothProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            ShoesProducts(),
          ],
        ),
      ),
    );
  }
}
