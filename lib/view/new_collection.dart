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
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          CustomTextWidget(
                            text: 'New Collection',
                            fontfamily: 'Bold',
                            fontSize: 30.0,
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
                      height: 200.0,
                      width: MediaQuery.of(context).size.width / 2.0,
                      imageUrl: white,
                      child: Center(
                        child: CustomTextWidget(
                          text: 'Summar Sale',
                          fontfamily: 'Bold',
                          fontSize: 30.0,
                          color: MyColors.red,
                        ),
                      ),
                    ),
                    Container(
                      color: MyColors.black.withOpacity(0.5),
                      child: CustomImageContainer(
                        height: 200.0,
                        width: MediaQuery.of(context).size.width / 2.0,
                        imageUrl: black,
                        fit: BoxFit.cover,
                        child: Center(
                          child: CustomTextWidget(
                            text: 'Black',
                            fontfamily: 'Bold',
                            fontSize: 30.0,
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
                        height: 400.0,
                        width: MediaQuery.of(context).size.width / 2.0,
                        imageUrl: hoddies,
                        fit: BoxFit.cover,
                        child: Center(
                          child: Column(
                            children: [
                              CustomTextWidget(
                                text: 'Men,s Hoddies',
                                fontfamily: 'Bold',
                                fontSize: 30.0,
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
                    text: 'Shop',
                    color: MyColors.grey,
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
