import 'package:e_commers_project/utils/constant.dart';
import 'package:e_commers_project/utils/custom_widget.dart';
import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

class VisualScreen extends StatelessWidget {
  const VisualScreen({super.key});

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
            text: 'Visual Search',
            fontWeight: FontWeight.bold,
          )),
        ),
        body: Container(
          color: MyColors.black.withOpacity(0.5),
          child: CustomImageContainer(
            imageUrl: girl3,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextWidget(
                    text:
                        'Search of an outfit by taking a photo uploading an image',
                    color: MyColors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontfamily: 'Bold',
                  ),
                  CustomButton(
                    text: 'Take a Photo',
                    width: MediaQuery.of(context).size.width,
                    bcolor: MyColors.white,
                  ),
                  CustomButton(
                    padv: 0,
                    text: 'Upload an image',
                    color: MyColors.black.withOpacity(0.5),
                    bcolor: MyColors.white,
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
