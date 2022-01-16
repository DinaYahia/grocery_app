import 'package:grocery_app/data/dummy_data.dart';
import 'package:grocery_app/models/groceryModels/offer_model.dart';
import 'package:grocery_app/ui/widgets/CategoryWidget/normal_widget.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: use_key_in_widget_constructors
class GroceryProdDetail extends StatelessWidget {
  static const int mainColor = 0xff6BB64A;
  static const int usedGrayColor = 0xff7E7E7E;

  OfferModel offerModel;
  GroceryProdDetail(this.offerModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.locale == Locale('en')) {
            context.setLocale(Locale('ar'));
          } else {
            context.setLocale(Locale('en'));
          }
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.language),
      ),

      body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //top image + header + three dots
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 370.h
                        : 400.h,
                width: double.infinity,
                child: Stack(
                  children: [
                    //top image
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image.network(
                        offerModel.imgURL,
                        // 'https://images.unsplash.com/photo-1581006852262-e4307cf6283a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                        width: double.infinity,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 370.h
                            : 400.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // top shadow
                    Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: <Color>[
                              // Colors.black.withAlpha(0),
                              // Colors.black54
                              Colors.black.withAlpha(0),
                              Colors.black87,
                            ],
                          ),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    // header
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 18,
                                color: Color(mainColor),
                              )),
                          Spacer(),
                          Text(
                            'grocery_product_detail'.tr(),
                            // 'Product Detail',
                            style: TextStyle(
                                fontSize: 18, color: Color(mainColor)),
                          ),
                          Spacer(),
                          Text(
                            '>',
                            style: TextStyle(
                                fontSize: 16, color: Colors.transparent),
                          )
                        ],
                      ),
                    ),
                    // three dots
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: const EdgeInsets.only(bottom: 10),
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white60,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white60,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              // detail of the product
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // product title + fav button
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Text(
                              context.locale == Locale('en')
                                  ? offerModel.name
                                  : offerModel.name_ar,
                              // ? 'Schweppes'
                              // : 'شويبس',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black)),
                          Spacer(),
                          ClipOval(
                            child: Material(
                              color: Colors.red, // Button color
                              child: InkWell(
                                splashColor: Colors.white, // Splash color
                                onTap: () {},
                                child: const SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 16,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // price and offer price
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: const [
                          Text(
                            '19.95 \$',
                            style: TextStyle(
                                fontSize: 20, color: Color(mainColor)),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            '25.91 \$',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(usedGrayColor),
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                    // product description
                    Container(
                      margin: const EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            child: Text('product_description'.tr(),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          Text(
                            context.locale == Locale('en')
                                ? 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo'
                                : 'كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن',
                            maxLines: 10,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            overflow: TextOverflow.visible,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //similar products
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 5, bottom: 0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            bottom: 5, top: 5, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'grocery_similar_product'.tr(),
                              style: TextStyle(
                                  fontSize: 20, color: Color(mainColor)),
                            ),
                            Spacer(),
                            Text(
                              'grocery_show_more'.tr(),
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            bottom: 0, top: 0, left: 12, right: 0),
                        child: Row(
                          children: offers.map((e) {
                            return Container(
                              child: Row(children: [ProductModelWidget(e)]),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
