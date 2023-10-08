import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import '../utils/image.dart';
import 'components/add_item_widget.dart';
import 'components/custom_button.dart';
import 'components/custom_row_widget.dart';

class WomenSecondScreen extends StatelessWidget {
  const WomenSecondScreen({super.key});

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
        title: CustomTextWidget(
          text: 'Women,s Tops',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Icon(
            Icons.search,
            color: MyColors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomButton(
                      text: 'T-Shirts',
                      color: MyColors.black,
                      hieght: 30.0,
                      width: 80.0,
                      bcolor: MyColors.black,
                      padh: 5.0,
                      padv: 10.0,
                      fontsize: 12.0,
                    ),
                    CustomButton(
                      text: 'Crop Tops',
                      color: MyColors.black,
                      hieght: 30.0,
                      width: 80.0,
                      bcolor: MyColors.black,
                      padh: 5.0,
                      padv: 10.0,
                      fontsize: 12.0,
                    ),
                    CustomButton(
                      text: 'Pullover',
                      color: MyColors.black,
                      hieght: 30.0,
                      width: 80.0,
                      bcolor: MyColors.black,
                      padh: 5.0,
                      padv: 10.0,
                      fontsize: 12.0,
                    ),
                    CustomButton(
                      text: 'Blouse',
                      color: MyColors.black,
                      hieght: 30.0,
                      width: 80.0,
                      bcolor: MyColors.black,
                      padh: 5.0,
                      padv: 10.0,
                      fontsize: 12.0,
                    ),
                    CustomButton(
                      text: 'Sleeveless',
                      color: MyColors.black,
                      hieght: 30.0,
                      width: 80.0,
                      bcolor: MyColors.black,
                      padh: 5.0,
                      padv: 10.0,
                      fontsize: 12.0,
                    )
                  ],
                )),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 250.0,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Sort By',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CustomTextWidget(text: 'Popular'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CustomTextWidget(text: 'Newest'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child:
                                    CustomTextWidget(text: 'Customer Review'),
                              ),
                              CustomContainerWidget(
                                  circular: 0.0,
                                  color: MyColors.red,
                                  bcolor: MyColors.red,
                                  height: 40.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Row(
                                      children: [
                                        CustomTextWidget(
                                          text: 'Price: lowest to high',
                                          color: MyColors.white,
                                        ),
                                      ],
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CustomTextWidget(
                                  text: 'Price: lowest to high',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: MyRow(
                icon: Icons.filter,
                text: 'Filters',
                icon1: Icons.arrow_drop_down,
                text1: 'Price: Lowest to high',
                icon2: Icons.menu,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 250.0,
                            child: Center(
                              child: SingleChildScrollView(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Sort By',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextSizeButton(
                                          text: 'XS',
                                        ),
                                        TextSizeButton(
                                          text: 'S',
                                        ),
                                        TextSizeButton(
                                          text: 'M',
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        TextSizeButton(
                                          text: 'L',
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        TextSizeButton(
                                          text: 'XL',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        CustomTextWidget(
                                          text: 'Size info',
                                          fontSize: 12.0,
                                          color: MyColors.grey,
                                        ),
                                        Spacer(),
                                        CustomIcon(
                                          icon: Icons.arrow_forward_ios,
                                          color: MyColors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                    text: 'Add To Cart',
                                    width: MediaQuery.of(context).size.width,
                                  )
                                ],
                              )),
                            ),
                          );
                        },
                      );
                    },
                    child: PriceRatingContainer(
                      price: '150\$',
                      discountprice: '100\$',
                      text: 'Drothy perkins',
                      imageurl: dress,
                      text1: 'Evening Dress',
                      rate: '(10)',
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  PriceRatingContainer(
                    price: '20\$',
                    discountprice: '15\$',
                    text: 'Drothy perkins',
                    imageurl: tracksuit,
                    text1: 'Track Suit',
                    rate: '(10)',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  PriceRatingContainer(
                    price: '80\$',
                    discountprice: '65\$',
                    text: 'Drothy perkins',
                    imageurl: weddingdress,
                    text1: 'Wedding Dress',
                    rate: '(10)',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  PriceRatingContainer(
                    price: '100\$',
                    discountprice: '85\$',
                    text: 'Drothy perkins',
                    imageurl: partydress,
                    text1: 'Party Dress',
                    rate: '(10)',
                  ),
                ],
              ),
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
