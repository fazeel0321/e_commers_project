import 'package:e_commers_project/view/components/add_item_widget.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import '../utils/image.dart';

class FashionScreen extends StatelessWidget {
  const FashionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: MyColors.black,
            )),
        title: Center(
            child: CustomTextWidget(
          text: 'Search by taking a photo',
          fontWeight: FontWeight.bold,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: MyColors.black.withOpacity(0.5),
            child: CustomImageContainer(
              imageUrl: dress,
              fit: BoxFit.cover,
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    CustomTextWidget(
                        text: 'Fashion Sale',
                        color: MyColors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontfamily: 'Bold'),
                    CustomButton(
                      text: 'Check',
                      width: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CustomTextWidget(
                  text: 'New',
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
                ImageItemContainer(
                  imageurl: weddingdress,
                ),
                SizedBox(
                  width: 10,
                ),
                ImageItemContainer(
                  imageurl: partydress,
                ),
                SizedBox(
                  width: 10,
                ),
                ImageItemContainer(
                  imageurl: hoddies,
                ),
                SizedBox(
                  width: 10,
                ),
                ImageItemContainer(
                  imageurl: image1,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ]),
      ),
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
                  CustomIcon(
                    icon: Icons.shopping_bag,
                    color: MyColors.grey,
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
