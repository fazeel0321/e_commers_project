import 'package:e_commers_project/utils/constant.dart';
import 'package:e_commers_project/utils/custom_widget.dart';
import 'package:e_commers_project/utils/image.dart';
import 'package:flutter/material.dart';

class NewCollection extends StatelessWidget {
  const NewCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: MyColors.black.withOpacity(0.5),
                  child: CustomImageContainer(
                    imageUrl: girl,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          CustomTextWidget(
                            text: 'New Collection',
                            fontfamily: 'Bold',
                            fontSize: 30,
                            color: MyColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    CustomImageContainer(
                      height: 200,
                      width: MediaQuery.of(context).size.width / 2,
                      imageUrl: white,
                      child: Center(
                        child: CustomTextWidget(
                          text: 'Summar Sale',
                          fontfamily: 'Bold',
                          fontSize: 30,
                          color: MyColors.red,
                        ),
                      ),
                    ),
                    Container(
                      color: MyColors.black.withOpacity(0.5),
                      child: CustomImageContainer(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2,
                        imageUrl: black,
                        fit: BoxFit.cover,
                        child: Center(
                          child: CustomTextWidget(
                            text: 'Black',
                            fontfamily: 'Bold',
                            fontSize: 30,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: MyColors.black.withOpacity(0.5),
                      child: CustomImageContainer(
                        height: 400,
                        width: MediaQuery.of(context).size.width / 2,
                        imageUrl: hoddies,
                        fit: BoxFit.cover,
                        child: Center(
                          child: Column(
                            children: [
                              CustomTextWidget(
                                text: 'Men,s Hoddies',
                                fontfamily: 'Bold',
                                fontSize: 30,
                                color: MyColors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
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
                    color: MyColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Shop',
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
