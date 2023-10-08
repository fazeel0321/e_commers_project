import 'package:e_commers_project/view/adding_screen.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import 'components/add_details_widget.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

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
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AddingScreen())));
            },
            child: DetailCard(
              text1: 'Jone Doe',
              text2: '3 New Bridge Court',
              text3: 'Chino hille, United State',
              text4: 'Use as the shipping address',
              hieght: 130,
            ),
          ),
          DetailCard(
            text1: 'Jone Doe',
            text2: '3 New Bridge Court',
            text3: 'Chino hille, United State',
            text4: 'Use as the shipping address',
            hieght: 130,
            icolor: MyColors.white,
          ),
          DetailCard(
            text1: 'Jone Doe',
            text2: '3 New Bridge Court',
            text3: 'Chino hille, United State',
            text4: 'Use as the shipping address',
            hieght: 130,
            icolor: MyColors.white,
          ),
          FloatingActionButton(
            backgroundColor: MyColors.black,
            onPressed: () {},
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
