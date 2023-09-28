import 'package:e_commers_project/utils/custom_widget.dart';
import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/components/add_item_widget.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:e_commers_project/view/components/custom_row_widget.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class WomenTopsScreen extends StatelessWidget {
  const WomenTopsScreen({super.key});

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
        actions: [
          CustomIcon(
            icon: Icons.search,
            color: MyColors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: 'Women,s tops',
                fontSize: 40,
                fontfamily: 'Bold',
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomButton(
                        text: 'T-Shirts',
                        color: MyColors.black,
                        hieght: 30,
                        width: 80,
                        bcolor: MyColors.black,
                        padh: 5,
                        padv: 10,
                        fontsize: 12,
                      ),
                      CustomButton(
                        text: 'Crop Tops',
                        color: MyColors.black,
                        hieght: 30,
                        width: 80,
                        bcolor: MyColors.black,
                        padh: 5,
                        padv: 10,
                        fontsize: 12,
                      ),
                      CustomButton(
                        text: 'Pullover',
                        color: MyColors.black,
                        hieght: 30,
                        width: 80,
                        bcolor: MyColors.black,
                        padh: 5,
                        padv: 10,
                        fontsize: 12,
                      ),
                      CustomButton(
                        text: 'Blouse',
                        color: MyColors.black,
                        hieght: 30,
                        width: 80,
                        bcolor: MyColors.black,
                        padh: 5,
                        padv: 10,
                        fontsize: 12,
                      ),
                      CustomButton(
                        text: 'Sleeveless',
                        color: MyColors.black,
                        hieght: 30,
                        width: 80,
                        bcolor: MyColors.black,
                        padh: 5,
                        padv: 10,
                        fontsize: 12,
                      )
                    ],
                  )),
              MyRow(
                icon: Icons.filter,
                text: 'Filters',
                icon1: Icons.arrow_drop_down,
                text1: 'Price: Lowest to high',
                icon2: Icons.menu,
              ),
              WomenItemCard(
                imageurl: partydress,
                text1: 'Party Dress',
                text2: 'Mango',
                text3: '51\$',
              ),
              WomenItemCard(
                imageurl: weddingdress,
                text1: 'Wedding Dress',
                text2: 'Mango',
                text3: '91\$',
              ),
              WomenItemCard(
                imageurl: black,
                text1: 'Black',
                text2: 'Mango',
                text3: '71\$',
              ),
              WomenItemCard(
                imageurl: girl,
                text1: 'Tops',
                text2: 'Mango',
                text3: '41\$',
              ),
              WomenItemCard(
                imageurl: dress2,
                text1: 'Pullover',
                text2: 'Mango',
                text3: '11\$',
              )
            ],
          ),
        ),
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
