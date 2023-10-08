import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/components/add_details_widget.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
          text: 'Payment mathods',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextWidget(
              text: 'Your Payment Cards',
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomImageContainer(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            imageUrl: card,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CustomContainerWidget(
                  bcolor: MyColors.black,
                  height: 20.0,
                  width: 20.0,
                  color: MyColors.black,
                  circular: 5.0,
                  child: Center(
                    child: CustomIcon(
                      icon: Icons.done,
                      Size: 12.0,
                      color: MyColors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CustomTextWidget(text: 'Use as the shipping Adress'),
              ],
            ),
          ),
          CustomImageContainer(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            imageUrl: card1,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CustomContainerWidget(
                  bcolor: MyColors.black,
                  height: 20.0,
                  width: 20.0,
                  color: MyColors.white,
                  circular: 5.0,
                  child: Center(
                    child: CustomIcon(
                      icon: Icons.done,
                      Size: 12.0,
                      color: MyColors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CustomTextWidget(text: 'Use as the shipping Adress'),
              ],
            ),
          ),
          FloatingActionButton(
            backgroundColor: MyColors.black,
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 800.0,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomTextWidget(
                              text: 'Add New Card',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              fontfamily: 'Bold',
                            ),
                            AddDetail2(
                              text: 'Name On Card',
                              hieght: 60.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10.0),
                              child: SingleChildScrollView(
                                child: CustomContainerWidget(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Card Number',
                                          color: MyColors.grey,
                                          fontSize: 10.0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Row(
                                            children: [
                                              CustomTextWidget(
                                                text: '4566 5677 4563 7688',
                                                color: MyColors.black,
                                                fontSize: 10.0,
                                              ),
                                              Spacer(),
                                              CustomImageContainer(
                                                imageUrl: logo,
                                                height: 30.0,
                                                width: 30.0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  height: 80.0,
                                  width: MediaQuery.of(context).size.width,
                                  color: MyColors.white,
                                  bcolor: MyColors.white,
                                  circular: 10.0,
                                ),
                              ),
                            ),
                            AddDetails(
                              text: 'Expire Date',
                              text2: '26/8',
                              padh: 5.0,
                              hieght: 80.0,
                            ),
                            AddDetails(
                              text: 'CVV',
                              text2: '377',
                              padh: 5.0,
                              hieght: 80.0,
                              icon: Icons.error,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  CustomContainerWidget(
                                    bcolor: MyColors.black,
                                    height: 20.0,
                                    width: 20.0,
                                    color: MyColors.white,
                                    circular: 5.0,
                                    child: Center(
                                      child: CustomIcon(
                                        icon: Icons.done,
                                        Size: 12.0,
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  CustomTextWidget(
                                      text: 'Set a defualt payment method'),
                                ],
                              ),
                            ),
                            CustomButton(
                              text: 'Save Address',
                              width: MediaQuery.of(context).size.width,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: CustomIcon(icon: Icons.add),
          )
        ],
      ),
    );
  }
}
