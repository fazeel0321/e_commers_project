import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/custom_widget.dart';

class BagAddItem extends StatelessWidget {
  var image;
  var chieght;
  var ehieght;
  var ftext;
  var ctext;
  var colortext;
  var stext;
  var sizetext;
  var price;
  BagAddItem(
      {this.chieght = 120,
      this.colortext,
      this.ctext,
      this.ehieght = 120,
      this.ftext,
      this.image,
      this.sizetext,
      this.price,
      this.stext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          CustomImageContainer(
            imageUrl: image,
            fit: BoxFit.cover,
            height: chieght,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Expanded(
            child: CustomContainerWidget(
                height: ehieght,
                color: MyColors.white,
                bcolor: MyColors.white,
                circular: 10,
                // width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          CustomTextWidget(
                            text: ftext,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontfamily: 'Medium',
                          ),
                          Spacer(),
                          CustomIcon(
                            icon: Icons.menu,
                            color: MyColors.grey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          CustomTextWidget(
                            text: ctext,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: MyColors.grey,
                            fontfamily: 'Medium',
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomTextWidget(
                            text: colortext,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontfamily: 'Medium',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomTextWidget(
                            text: stext,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: MyColors.grey,
                            fontfamily: 'Medium',
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomTextWidget(
                            text: sizetext,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontfamily: 'Medium',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 255, 249, 234),
                            child: CustomIcon(
                              icon: Icons.add,
                              color: MyColors.black,
                              Size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomTextWidget(text: '1'),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 219, 215, 203),
                            child: Center(
                              child: CustomIcon(
                                icon: Icons.minimize,
                                color: MyColors.black,
                                Size: 18,
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomTextWidget(
                            text: price,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class ItemSeasonCard extends StatelessWidget {
  var image;
  var chieght;
  var ehieght;
  var utext;
  var ltext;
  var timetext;
  ItemSeasonCard(
      {this.chieght = 80,
      this.ehieght = 80,
      this.image,
      this.utext,
      this.ltext,
      this.timetext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          CustomImageContainer(
            imageUrl: image,
            fit: BoxFit.cover,
            height: chieght,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Expanded(
            child: CustomContainerWidget(
                height: ehieght,
                color: MyColors.white,
                bcolor: MyColors.white,
                circular: 10,
                // width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextWidget(
                                  text: utext,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomTextWidget(
                                  text: ltext,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Column(
                              children: [
                                CustomTextWidget(
                                  text: timetext,
                                  color: MyColors.grey,
                                  fontSize: 10,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomContainerWidget(
                                  child: Center(
                                      child: CustomTextWidget(
                                    text: 'Apply',
                                    color: MyColors.white,
                                  )),
                                  height: 40,
                                  width: 70,
                                  circular: 20,
                                  color: MyColors.red,
                                  bcolor: MyColors.red,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class PriceRatingContainer extends StatelessWidget {
  var text;

  var text1;
  var rate;
  var price;
  var discountprice;
  var imageurl;
  PriceRatingContainer(
      {this.discountprice,
      this.imageurl,
      this.price,
      this.rate,
      this.text,
      this.text1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 170,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageurl),
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              bottom: -15,
              right: -15,
              child: CircleAvatar(
                child: CustomIcon(
                  icon: Icons.favorite_border,
                  color: MyColors.grey,
                ),
                backgroundColor: MyColors.white,
              ),
            ),
            Positioned(
              top: 10,
              left: 15,
              child: CustomContainerWidget(
                child: Center(
                  child: CustomTextWidget(
                    text: '-20%',
                    color: MyColors.white,
                  ),
                ),
                height: 20,
                width: 50,
                color: MyColors.red,
                circular: 30,
                bcolor: MyColors.white,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIcon(
              icon: Icons.star,
              color: MyColors.yellow,
              Size: 13,
            ),
            CustomIcon(
              icon: Icons.star,
              Size: 13,
              color: MyColors.yellow,
            ),
            CustomIcon(
              icon: Icons.star,
              Size: 13,
              color: MyColors.yellow,
            ),
            CustomIcon(
              icon: Icons.star,
              Size: 13,
              color: MyColors.yellow,
            ),
            CustomIcon(
              icon: Icons.star,
              Size: 13,
              color: MyColors.yellow,
            ),
            CustomTextWidget(
              text: rate,
              color: MyColors.grey,
              fontSize: 10,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
              text: text,
              color: MyColors.grey,
              fontSize: 10,
            ),
            CustomTextWidget(
              text: text1,
              color: MyColors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        Row(
          children: [
            CustomTextWidget(
              text: price,
              color: MyColors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: 10,
            ),
            CustomTextWidget(
              text: discountprice,
              color: MyColors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )
          ],
        )
      ],
    );
  }
}

class ImageItemContainer extends StatelessWidget {
  var imageurl;
  ImageItemContainer({required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainerWidget(
              child: Center(
                child: CustomTextWidget(
                  text: 'New',
                  color: MyColors.white,
                ),
              ),
              height: 20,
              width: 50,
              color: MyColors.grey,
              circular: 30,
              bcolor: MyColors.white,
            ),
          ],
        ),
      ),
      width: 170,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          )),
    );
  }
}

class AddImageText extends StatelessWidget {
  var image;
  var text;
  AddImageText({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 70,
              child: Center(
                  child: CustomTextWidget(
                text: text,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
            ),
          ),
          Expanded(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
            ),
          ),
        ],
      ),
    );
  }
}

class WomenItemCard extends StatelessWidget {
  var imageurl;
  var text1;
  var text2;
  var text3;

  WomenItemCard({this.imageurl, this.text1, this.text2, this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          CustomImageContainer(
            imageUrl: imageurl,
            fit: BoxFit.cover,
            height: 90,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomContainerWidget(
                  height: 90,
                  color: MyColors.white,
                  bcolor: MyColors.white,
                  circular: 10,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: text1,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        CustomTextWidget(
                          text: text2,
                          color: MyColors.grey,
                          fontSize: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 12,
                            ),
                            Icon(
                              size: 12,
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              size: 12,
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              size: 12,
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              size: 12,
                              Icons.star_border,
                              color: Colors.grey,
                            ),
                            CustomTextWidget(
                              text: '(4)',
                              color: Colors.grey,
                              fontSize: 12,
                            )
                          ],
                        ),
                        CustomTextWidget(
                          text: text3,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  )),
              Positioned(
                bottom: -12,
                right: -12,
                child: CircleAvatar(
                  backgroundColor: MyColors.white,
                  child: Icon(
                    Icons.favorite_border,
                    color: MyColors.grey,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
