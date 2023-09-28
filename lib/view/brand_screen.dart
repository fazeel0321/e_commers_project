import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import 'components/custom_row_widget.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

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
          text: 'Brand',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomTextField(
              htext: ' Search',
              ltext: 'Search',
              picon: Icon(Icons.search),
              bcircular: 10,
              bcolor: MyColors.grey,
            ),
          ),
          BrandRow(
            text: 'adidas',
          ),
          BrandRow(
            text: 'adidas orignal',
            color: MyColors.red,
            Ccolor: MyColors.red,
            bcolor: MyColors.red,
          ),
          BrandRow(
            text: 'Blend',
          ),
          BrandRow(
            text: 'Diesel',
          ),
          BrandRow(
            text: 'Boutique',
          ),
          BrandRow(
            text: 'Champion',
          ),
          BrandRow(
            text: 'Jack & Jones',
            color: MyColors.red,
            Ccolor: MyColors.red,
            bcolor: MyColors.red,
          ),
          BrandRow(
            text: 'Naf Naf',
          ),
          BrandRow(
            text: 'Red Valentino',
          ),
          BrandRow(
            text: 's.Oliver',
            color: MyColors.red,
            Ccolor: MyColors.red,
            bcolor: MyColors.red,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          children: [
            CustomButton(
              text: 'Discard',
              width: 150,
              color: MyColors.white,
              bcolor: MyColors.black,
              tcolor: MyColors.black,
            ),
            CustomButton(
              text: 'Apply',
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
