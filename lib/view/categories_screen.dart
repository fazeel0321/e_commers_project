import 'package:e_commers_project/view/categories_second_screen.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
        title: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => CategoriesSecondScreen())));
          },
          child: CustomTextWidget(
            text: 'Categories',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CustomIcon(
            icon: Icons.search,
            color: MyColors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(
                text: 'View All Item',
                width: MediaQuery.of(context).size.width,
              ),
              CustomTextWidget(
                text: 'Choose Categories',
                color: MyColors.grey,
                fontSize: 12.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              CustomTextWidget(
                text: 'Tops',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Shirts',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Knitwears',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'T Shirts',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Hoddies',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Sandos',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Shorts',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Jens',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Pants',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Wedding Dress',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Party Dress',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              SizedBox(
                height: 5.0,
              ),
              CustomTextWidget(
                text: 'Dress',
                color: MyColors.black,
                fontWeight: FontWeight.bold,
              ),
              Divider(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 15.0, left: 10.0),
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
              padding:
                  const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: 'Home',
                    color: MyColors.grey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Shoping',
                    color: MyColors.red,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Bag',
                    color: MyColors.grey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Favroite',
                    color: MyColors.grey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Profile',
                    color: MyColors.grey,
                    fontSize: 15.0,
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
