import 'dart:io';
import 'dart:math';

import 'package:grocery_app/data/dummy_data.dart';
import 'package:grocery_app/ui/screens/groceryScreens/grocery_product_detail.dart';
import 'package:grocery_app/ui/widgets/CategoryWidget/category_wiget.dart';
import 'package:grocery_app/ui/widgets/CategoryWidget/normal_widget.dart';
import 'package:grocery_app/ui/widgets/CategoryWidget/offer_widget.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: use_key_in_widget_constructors
class GroceryTry extends StatelessWidget {
  static const int mainColor = 0xff6BB64A;
  static const int usedGrayColor = 0xff7E7E7E;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //   body: Text('AppLocalizations.of(context)!.helloWorld'),
      // );
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.locale == Locale('en')) {
            context.setLocale(Locale('ar'));
          } else {
            context.setLocale(Locale('en'));
          }
          // print(MediaQuery.of(context).size.width.toString());
          // print(MediaQuery.of(context).size.height.toString());
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.language),
      ),
      appBar: AppBar(
        elevation: 0,
        // shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Center(
          // Text('grocery_home'.tr())
          child: Text(
            'grocery_home'.tr(),
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Color(mainColor)),
          ),
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //top slider
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return GroceryProdDetail(topSlider[0]);
                  }));
                },
                child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 182.h
                        : 250.h,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Stack(
                      children: [
                        //backImage
                        Container(
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1601648764658-cf37e8c89b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // bottom text
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          // color: Colors.red,
                          padding:
                              EdgeInsets.only(left: 10, bottom: 50, right: 10),
                          child: Text(
                            // 'grocery_home'.tr(),
                            context.locale == Locale('en')
                                ? 'Sweet pepper'
                                : 'فلفل حلو',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          alignment: context.locale == Locale('en')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          // color: Colors.red,
                          padding:
                              EdgeInsets.only(left: 10, bottom: 25, right: 10),
                          child: const Text(
                            '19.95\$',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          alignment: context.locale == Locale('en')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                        ),
                        // top fav button
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          // color: Colors.red,
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // Button color
                              child: InkWell(
                                splashColor: Colors.white, // Splash color
                                onTap: () {},
                                child: SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.favorite,
                                      // color: Colors.white,
                                      color: Color(0xffCACACA),
                                      size: 16,
                                    )),
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.white60,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
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
                    )),
              ),
              //categories
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            bottom: 5, top: 5, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'grocery_categories'.tr(),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: categories.map((e) {
                            return Container(
                              child: Row(children: [CategoryModelWidget(e)]),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )),
              //offers
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 5, bottom: 0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            bottom: 5, top: 5, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'grocery_offers'.tr(),
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
                              child: Row(children: [OfferModelWidget(e)]),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )),
              //best Seller
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'grocery_best_sellers'.tr(),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: Color(mainColor),
        unselectedItemColor: Color(usedGrayColor),
      ),
    );
  }
}

// CarouselSlider(
//   options: CarouselOptions(height: 400.0),
//   items: [1, 2, 3, 4, 5].map((i) {
//     return Builder(
//       builder: (BuildContext context) {
//         return Container(
//             width: MediaQuery.of(context).size.width,
//             margin: EdgeInsets.symmetric(horizontal: 5.0),
//             decoration: BoxDecoration(color: Colors.amber),
//             child: Text(
//               'text $i',
//               style: TextStyle(fontSize: 16.0),
//             ));
//       },
//     );
//   }).toList(),
// )
