import 'package:e_commers_project/utils/constant.dart';
import 'package:e_commers_project/utils/custom_widget.dart';
import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

class ContinueScreen extends StatelessWidget {
  const ContinueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 30),
            child: Center(child: Image.network(bag)),
          ),
          CustomTextWidget(
            text: 'Success!',
            fontWeight: FontWeight.bold,
            fontfamily: 'bold',
            fontSize: 30,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextWidget(
            text: 'Your order will be delivered soon,',
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: MyColors.grey,
          ),
          SizedBox(
            height: 5,
          ),
          CustomTextWidget(
            text: 'Thank you for chossing our app!',
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: MyColors.grey,
          ),
          Spacer(),
          CustomButton(
            text: 'Continue Shopping',
            width: MediaQuery.of(context).size.width,
            padv: 40,
            padh: 20,
          )
        ],
      ),
    );
  }
}
