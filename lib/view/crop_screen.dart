import 'package:e_commers_project/view/components/custom_icon_widget.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import '../utils/image.dart';

class CropScreen extends StatelessWidget {
  const CropScreen({super.key});

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
        title: Center(
            child: CustomTextWidget(
          text: 'Crop this item',
          fontWeight: FontWeight.bold,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CustomImageContainer(
            imageUrl: girl2,
            fit: BoxFit.cover,
            height: 550,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [CustomIconButton(icon: Icons.search)],
            ),
          )
        ]),
      ),
    );
  }
}
