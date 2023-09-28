import 'package:e_commers_project/view/components/add_item_widget.dart';
import 'package:e_commers_project/view/my_bag.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import '../utils/image.dart';

class StreetClothesScreen extends StatefulWidget {
  const StreetClothesScreen({super.key});

  @override
  State<StreetClothesScreen> createState() => _StreetClothesScreenState();
}

class _StreetClothesScreenState extends State<StreetClothesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Container(
              color: MyColors.black.withOpacity(0.50),
              child: CustomImageContainer(
                imageUrl: girl3,
                fit: BoxFit.cover,
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomTextWidget(
                        text: 'Street Clothes',
                        color: MyColors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontfamily: 'Bold',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              CustomTextWidget(
                text: 'Sale',
                color: MyColors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontfamily: 'Medium',
              ),
              Spacer(),
              CustomTextWidget(
                text: 'view all',
                color: MyColors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 10,
              ),
              PriceRatingContainer(
                price: '150\$',
                discountprice: '100\$',
                text: 'Drothy perkins',
                imageurl: dress,
                text1: 'Evening Dress',
                rate: '(10)',
              ),
              SizedBox(
                width: 15,
              ),
              PriceRatingContainer(
                price: '20\$',
                discountprice: '15\$',
                text: 'Drothy perkins',
                imageurl: tracksuit,
                text1: 'Track Suit',
                rate: '(10)',
              ),
              SizedBox(
                width: 15,
              ),
              PriceRatingContainer(
                price: '80\$',
                discountprice: '65\$',
                text: 'Drothy perkins',
                imageurl: weddingdress,
                text1: 'Wedding Dress',
                rate: '(10)',
              ),
              SizedBox(
                width: 15,
              ),
              PriceRatingContainer(
                price: '100\$',
                discountprice: '85\$',
                text: 'Drothy perkins',
                imageurl: partydress,
                text1: 'Party Dress',
                rate: '(10)',
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        height: 70,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    icon: Icons.home,
                    color: MyColors.red,
                  ),
                  CustomIcon(
                    icon: Icons.shop_rounded,
                    color: MyColors.grey,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MyBagScreen())));
                    },
                    child: CustomIcon(
                      icon: Icons.shopping_bag,
                      color: MyColors.grey,
                    ),
                  ),
                  CustomIcon(
                    icon: Icons.favorite_border,
                    color: MyColors.grey,
                  ),
                  CustomIcon(
                    icon: Icons.person,
                    color: MyColors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: 'Home',
                    color: MyColors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Shoping',
                    color: MyColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Bag',
                    color: MyColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Favroite',
                    color: MyColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Profile',
                    color: MyColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
