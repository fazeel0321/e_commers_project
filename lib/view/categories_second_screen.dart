import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/components/add_item_widget.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';

class CategoriesSecondScreen extends StatelessWidget {
  const CategoriesSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: MyColors.black,
            )),
        title: CustomTextWidget(
          text: 'Categories',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          CustomIcon(
            icon: Icons.search,
            color: MyColors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Women',
                  fontWeight: FontWeight.bold,
                ),
                CustomTextWidget(
                  text: 'Men',
                  fontWeight: FontWeight.bold,
                ),
                CustomTextWidget(
                  text: 'Kids',
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Row(
            children: [
              CustomContainerWidget(
                child: Row(children: [Divider()]),
                color: MyColors.red,
                height: 3,
                width: 100,
                bcolor: MyColors.red,
                circular: 3,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomContainerWidget(
                height: 90,
                width: MediaQuery.of(context).size.width,
                circular: 20,
                color: MyColors.red,
                bcolor: MyColors.red,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextWidget(
                        text: 'Summar Sale',
                        color: MyColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      CustomTextWidget(
                        text: 'Up to 50% off',
                        color: MyColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                )),
          ),
          AddImageText(
            image: girl,
            text: 'New',
          ),
          AddImageText(
            image: image1,
            text: 'Clothes',
          ),
          AddImageText(
            image: black,
            text: 'Shoes',
          ),
          AddImageText(
            image: dress,
            text: 'Accesories',
          )
        ],
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
                    color: MyColors.grey,
                  ),
                  CustomIcon(
                    icon: Icons.shop_rounded,
                    color: MyColors.red,
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
                    color: MyColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Shoping',
                    color: MyColors.red,
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
