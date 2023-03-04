import 'package:clothes_store_app_with_bottom_navigation/app_styles.dart';
import 'package:clothes_store_app_with_bottom_navigation/counter.dart';
import 'package:clothes_store_app_with_bottom_navigation/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final Counter _counter = Counter();

  void _incrementCounter() {
    setState(() {
      _counter.increment();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: kDarkBrown,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/shopping_cart_icon.svg"),
              SizedBox(width: SizeConfig.blockSizeHorizontal! * 2),
              RichText(
                text: TextSpan(
                  text: 'Add to Cart | \$100.99 ',
                  style: kEncodeSansBold.copyWith(
                    color: kWhite,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "\$190.99",
                      style: kEncodeSansRegular.copyWith(
                        color: kWhite,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        decoration: TextDecoration.lineThrough,
                        decorationThickness:
                            SizeConfig.blockSizeHorizontal! * 1,
                        decorationColor: kWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
          ),
          child: Column(
            children: [
              const SizedBox(height: 15),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 50,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                          "assets/images/image_product_detail.png",
                          height: SizeConfig.blockSizeVertical! * 50,
                          width: double.infinity,
                          fit: BoxFit.cover),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: SizeConfig.blockSizeVertical! * 4,
                                width: SizeConfig.blockSizeVertical! * 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kWhite,
                                  boxShadow: [
                                    BoxShadow(
                                      color: kBrown.withOpacity(0.11),
                                      spreadRadius: 0.0,
                                      blurRadius: 12,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    "assets/arrow_back_icon.svg"),
                              ),
                            ),
                            Container(
                              height: SizeConfig.blockSizeVertical! * 4,
                              width: SizeConfig.blockSizeVertical! * 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: kBrown.withOpacity(0.11),
                                    spreadRadius: 0.0,
                                    blurRadius: 12,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset(
                                  "assets/favorite_black_icon.svg"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Modern light clothes",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodeSansSemiBold.copyWith(
                        color: kDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 7,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: _decrementCounter,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kBorder,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                            color: kWhite,
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: kGrey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      Text(
                        _counter.value.toString(),
                        style: kEncodeSansBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          color: kDarkBrown,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      GestureDetector(
                        onTap: _incrementCounter,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kBorder,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                            color: kWhite,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: kGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.all(2),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: kYellow,
                    ),
                    onRatingUpdate: (rating) {
                      debugPrint(rating.toString());
                    },
                    unratedColor: kLightGrey,
                  ),
                  const SizedBox(width: 8),
                  RichText(
                    text: TextSpan(
                      text: '5.0',
                      style: kEncodeSansRegular.copyWith(
                        color: kDarkGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "(7.932 reviews)",
                          style: kEncodeSansRegular.copyWith(
                            color: kBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              ReadMoreText(
                "Big picture viral engagement. Let me know if you need me to crack any skulls. Strategic staircase productize pre launch, nor big data, pivot. On-brand but completeley fresh loop back run it up the flagpole no need to talk to users, just base it on the space calculator, but meeting assassin, so 4-blocker. Pushback. Open door policy customer centric it's a simple lift and shift job, so offline this discussion. Flesh that out through the lens of time to open the kimono my supervisor didn't like the latest revision you gave me can you switch back to the first revision?, for churning anomalies.",
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: " ",
                trimCollapsedText: " read more...",
                trimExpandedText: " show Less",
                style: kEncodeSansRegular.copyWith(
                  color: kDarkGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
                moreStyle: kEncodeSansBold.copyWith(
                  color: kDarkBrown,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
                lessStyle: kEncodeSansBold.copyWith(
                  color: kDarkBrown,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                height: 1,
                color: kLightGrey,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose Size",
                        style: kEncodeSansBold.copyWith(
                          color: kDarkGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kWhite,
                            ),
                            child: Center(
                              child: Text(
                                "S",
                                style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.7,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kWhite,
                            ),
                            child: Center(
                              child: Text(
                                "M",
                                style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.7,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kDarkBrown,
                            ),
                            child: Center(
                              child: Text(
                                "L",
                                style: kEncodeSansBold.copyWith(
                                  color: kWhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.7,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kWhite,
                            ),
                            child: Center(
                              child: Text(
                                "XL",
                                style: kEncodeSansRegular.copyWith(
                                  color: kDarkBrown,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.7,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Colors",
                        style: kEncodeSansBold.copyWith(
                          color: kDarkGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kWhite,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kWhite,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kDarkBrown,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 1,
                          ),
                          Container(
                            height: SizeConfig.blockSizeHorizontal! * 4.5,
                            width: SizeConfig.blockSizeHorizontal! * 4.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                              color: kBrown,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
