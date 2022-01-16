import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/groceryModels/offer_model.dart';
import 'package:grocery_app/ui/screens/groceryScreens/grocery_product_detail.dart';

class ProductModelWidget extends StatelessWidget {
  OfferModel offerModel;
  ProductModelWidget(this.offerModel);

  static const int mainColor = 0xff6BB64A;
  static const int usedGrayColor = 0xff7E7E7E;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return GroceryProdDetail(this.offerModel);
        }));
      },
      child: Card(
        margin: const EdgeInsets.only(top: 5, bottom: 5, right: 12),
        shadowColor: Colors.black,
        child: Column(
          children: [
            Container(
              width: 148.w,
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 170.h
                  : 228.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  // margin: const EdgeInsets.only(right: 10),
                  child: Stack(
                    children: <Widget>[
                      // image back + texts
                      Column(
                        children: [
                          //image background
                          Container(
                            height: 108.h,
                            width: 148.w,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              child: Image.network(
                                offerModel.imgURL,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // texts
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 5),
                            child: Column(
                              children: [
                                // name + cart
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        context.locale == Locale('en')
                                            ? offerModel.name
                                            : offerModel.name_ar,
                                        style: const TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                // prices
                                Row(
                                  children: [
                                    Text(
                                      offerModel.offerPrice,
                                      maxLines: 1,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(mainColor)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      // top fav button
                      Container(
                        width: 148.w,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 170.h
                            : 228.h,
                        padding:
                            const EdgeInsets.only(top: 10, right: 5, left: 5),
                        // color: Colors.red,
                        child: ClipOval(
                          child: Material(
                            color: (offerModel.isFav
                                ? Colors.red
                                : Colors.white), // Button color
                            child: InkWell(
                              splashColor: Colors.white, // Splash color
                              onTap: () {},
                              child: SizedBox(
                                  width: 26,
                                  height: 26,
                                  child: Icon(
                                    Icons.favorite,
                                    color: (offerModel.isFav
                                        ? Colors.white
                                        : Color(0xffCACACA)),
                                    size: 16,
                                  )),
                            ),
                          ),
                        ),
                        alignment: context.locale == Locale('en')
                            ? Alignment.topRight
                            : Alignment.topLeft,
                      ),

                      // cart button
                      Container(
                        width: 148.w,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 170.h
                            : 228.h,
                        alignment: context.locale == Locale('en')
                            ? Alignment.bottomRight
                            : Alignment.bottomLeft,
                        padding: const EdgeInsets.only(bottom: 30, right: 5),
                        child: ClipOval(
                          child: Material(
                            color: Colors.grey[50], // Button color
                            child: InkWell(
                              splashColor: Colors.white, // Splash color
                              onTap: () {},
                              child: SizedBox(
                                width: 26,
                                height: 26,
                                child: Image.asset(
                                  'assets/icons/Cart.png',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
