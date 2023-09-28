import 'package:e_commers_project/view/adding_screen.dart';
import 'package:e_commers_project/view/address_screen.dart';
import 'package:e_commers_project/view/brand_screen.dart';
import 'package:e_commers_project/view/camera_screen.dart';
import 'package:e_commers_project/view/categories_screen.dart';
import 'package:e_commers_project/view/categories_second_screen.dart';
import 'package:e_commers_project/view/check_out_screen.dart';

import 'package:e_commers_project/view/continue_shopping_screen.dart';

import 'package:e_commers_project/view/crop_screen.dart';
import 'package:e_commers_project/view/fashion_screen.dart';
import 'package:e_commers_project/view/my_bag.dart';

import 'package:e_commers_project/view/new_collection.dart';
import 'package:e_commers_project/view/payment_screen.dart';
import 'package:e_commers_project/view/street_clothes_screen.dart';
import 'package:e_commers_project/view/succesS_screen.dart';

import 'package:e_commers_project/view/visual_search_screen.dart';
import 'package:e_commers_project/view/women_second_screen.dart';
import 'package:e_commers_project/view/women_tops_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ECommers());
}

class ECommers extends StatelessWidget {
  const ECommers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BrandScreen(),
    );
  }
}
