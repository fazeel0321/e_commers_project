import 'package:e_commers_project/utils/constant.dart';
import 'package:e_commers_project/utils/custom_widget.dart';

import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

import 'components/add_details_widget.dart';

class AddingScreen extends StatelessWidget {
  const AddingScreen({super.key});

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
          text: 'Adding Shipping Address',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddDetail2(
              text: 'Full Name',
              hieght: 60,
            ),
            AddDetails(
              text: 'Address',
              text2: 'Bhatti Gate',
              hieght: 80,
            ),
            AddDetails(
              hieght: 80,
              text: 'City',
              text2: 'Lahore',
            ),
            AddDetails(
              text: 'State/Region',
              hieght: 80,
              text2: 'Islam',
            ),
            AddDetails(
              text: 'Zip Code(Post Code)',
              hieght: 80,
              text2: '54000',
            ),
            AddDetails(
              text: 'Country',
              hieght: 80,
              text2: 'Pakistan',
              icon: Icons.arrow_forward_ios,
              size: 12,
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
// Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           child: CustomTextField(
//             htext: 'Full Name',
//             bcolor: MyColors.white,
//             bcircular: 10,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           child: CustomTextField(
//             htext: '3 New Bridge Court',
//             ltext: 'Address',
//             bcolor: MyColors.white,
//             bcircular: 10,
//           ),
// )
