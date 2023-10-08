import 'package:e_commers_project/view/crop_screen.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';
import '../utils/image.dart';
import 'components/custom_icon_widget.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

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
          text: 'Search by taking a photo',
          fontWeight: FontWeight.bold,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CropScreen()));
            },
            child: CustomImageContainer(
              imageUrl: girl2,
              fit: BoxFit.cover,
              height: 550.0,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomIcon(icon: Icons.flash_on),
                CustomIconButton(icon: Icons.camera_alt_rounded),
                CustomIcon(icon: Icons.replay),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
 // 