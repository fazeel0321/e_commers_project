import 'package:e_commers_project/utils/image.dart';

import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import 'components/add_details_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
          text: 'Checkout',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTextWidget(
                text: 'Shopping Adress',
                fontWeight: FontWeight.bold,
              ),
            ),
            DetailCard2(
              text1: 'Jone Doe',
              text2: '3 New Bridge Court',
              text3: 'Chino hille, United State',
              hieght: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  CustomTextWidget(
                    text: 'Payment',
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  CustomTextWidget(
                    text: 'Change',
                    fontWeight: FontWeight.bold,
                    color: MyColors.red,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  CustomImageContainer(
                    imageUrl: logo,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomTextWidget(text: '**** **** **** 6574 ')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomTextWidget(
                text: 'Delivery Method',
                fontWeight: FontWeight.bold,
                color: MyColors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageContainer(
                    imageUrl: delivery2,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                  CustomImageContainer(
                    imageUrl: delivery3,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                  CustomImageContainer(
                    imageUrl: delvery1,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  CustomTextWidget(
                    text: 'Order:',
                    fontWeight: FontWeight.bold,
                    color: MyColors.grey,
                  ),
                  Spacer(),
                  CustomTextWidget(
                    text: '112\$',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  CustomTextWidget(
                    text: 'Delivery:',
                    fontWeight: FontWeight.bold,
                    color: MyColors.grey,
                  ),
                  Spacer(),
                  CustomTextWidget(
                    text: '15\$',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  CustomTextWidget(
                    text: 'Summary:',
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
              text: 'Save Address',
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
