import 'package:e_commers_project/utils/image.dart';
import 'package:e_commers_project/view/components/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../utils/custom_widget.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomImageContainer(
          imageUrl: girl,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            color: MyColors.black.withOpacity(0.10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CustomTextWidget(
                    text: 'Success!',
                    fontWeight: FontWeight.bold,
                    fontfamily: 'bold',
                    fontSize: 30,
                  ),
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
                CustomButton(
                  text: 'Continue Shopping',
                  width: 200,
                )
              ],
            ),
          )),
    );
  }
}
// child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 50),
//             child: CustomTextWidget(
//               text: 'Success!',
//               fontWeight: FontWeight.bold,
//               fontfamily: 'bold',
//               fontSize: 30,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           CustomTextWidget(
//             text: 'Your order will be delivered soon,',
//             fontWeight: FontWeight.bold,
//             fontSize: 12,
//             color: MyColors.grey,
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           CustomTextWidget(
//             text: 'Thank you for chossing our app!',
//             fontWeight: FontWeight.bold,
//             fontSize: 12,
//             color: MyColors.grey,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
//             child: CustomContainerWidget(
//               child: Center(
//                 child: CustomTextWidget(
//                   text: 'Continue Shopping',
//                   color: MyColors.white,
//                 ),
//               ),
//               height: 40,
//               width: 200,
//               circular: 30,
//               color: MyColors.red,
//               bcolor: MyColors.red,
//             ),
//           )
//         ],
//       ),