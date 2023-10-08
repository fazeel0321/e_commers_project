import 'package:e_commers_project/utils/constant.dart';
import 'package:e_commers_project/utils/custom_widget.dart';
import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/check_out_screen.dart';
import 'package:e_commers_project/view/components/add_item_widget.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [Spacer(), CustomIcon(icon: Icons.search)],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => CheckoutScreen())));
              },
              child: CustomTextWidget(
                text: 'My Bag',
                fontfamily: 'Bold',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            BagAddItem(
              ftext: 'T Shirt',
              sizetext: 'L',
              stext: 'Size:',
              ctext: 'color:',
              colortext: 'black',
              price: '30\$',
              image: tshirt,
            ),
            BagAddItem(
              ftext: 'Hoddies',
              sizetext: 'L',
              stext: 'Size:',
              ctext: 'color:',
              colortext: 'black',
              price: '30\$',
              image: hoddies,
            ),
            BagAddItem(
              ftext: 'Sandos',
              sizetext: 'L',
              stext: 'Size:',
              ctext: 'color:',
              colortext: 'black',
              price: '30\$',
              image: sandos,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CustomContainerWidget(
                child: Row(
                  children: [
                    CustomTextWidget(
                      text: 'enter your promo code',
                      color: MyColors.grey,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10.0),
                                        child: CustomContainerWidget(
                                          child: Row(
                                            children: [
                                              CustomTextWidget(
                                                text: 'enter your promo code',
                                                color: MyColors.grey,
                                              ),
                                              Spacer(),
                                              CircleAvatar(
                                                backgroundColor: MyColors.black,
                                                child: CustomIcon(
                                                  icon: Icons.arrow_forward,
                                                  color: MyColors.white,
                                                  Size: 14.0,
                                                ),
                                              )
                                            ],
                                          ),
                                          height: 40.0,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: MyColors.white,
                                          bcolor: MyColors.white,
                                          circular: 10.0,
                                        ),
                                      ),
                                      CustomTextWidget(
                                        text: ' Your promo code',
                                        color: MyColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0,
                                      ),
                                      ItemSeasonCard(
                                        utext: 'Summar Sale',
                                        ltext: 'Summar2020',
                                        timetext: '6 days remaing',
                                        image: summarsale,
                                      ),
                                      ItemSeasonCard(
                                        utext: 'Personal offer',
                                        ltext: 'my poromo code',
                                        timetext: '26 days remaing',
                                        image: summarsale,
                                      ),
                                      ItemSeasonCard(
                                        utext: 'Personal offer',
                                        ltext: 'my poromo code',
                                        timetext: '26 days remaing',
                                        image: summarsale,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: MyColors.black,
                        child: CustomIcon(
                          icon: Icons.arrow_forward,
                          color: MyColors.white,
                          Size: 14.0,
                        ),
                      ),
                    )
                  ],
                ),
                height: 40.0,
                width: MediaQuery.of(context).size.width,
                color: MyColors.white,
                bcolor: MyColors.white,
                circular: 10.0,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                children: [
                  CustomTextWidget(
                    text: 'Total amount:',
                    fontWeight: FontWeight.bold,
                    color: MyColors.grey,
                  ),
                  Spacer(),
                  CustomTextWidget(
                    text: '127\$',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            CustomButton(
              text: 'Check Out',
              width: MediaQuery.of(context).size.width,
            )
          ]),
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
                    color: MyColors.grey,
                  ),
                  CustomIcon(
                    icon: Icons.shopping_bag,
                    color: MyColors.red,
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
                    color: MyColors.grey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextWidget(
                    text: 'Bag',
                    color: MyColors.red,
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
