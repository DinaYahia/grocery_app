import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/groceryModels/categories_model.dart';

class CategoryModelWidget extends StatelessWidget {
  CategoryModel categoryModel;
  CategoryModelWidget(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ?
        // في حال الوضع الطولي
        Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5, right: 12),
            child: Column(
              children: [
                SizedBox(
                  width: 120.w,
                  height: 120.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          //background
                          Container(
                            width: 120.w,
                            height: 120.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                categoryModel.imgURL,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // bottom text
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            alignment: context.locale == Locale('en')
                                ? Alignment.bottomLeft
                                : Alignment.bottomRight,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Colors.black.withAlpha(0),
                                    Colors.black54
                                  ],
                                ),
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              // 'grocery_home'.tr(),
                              context.locale == Locale('en')
                                  ? categoryModel.name
                                  : categoryModel.name_ar,
                              // categoryModel.name,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        :
        // في حال الوضع العرضي
        Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5, right: 12),
            child: Column(
              children: [
                SizedBox(
                  width: 120.w,
                  height: 160.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          //background
                          Container(
                            width: 120.w,
                            height: 160.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                categoryModel.imgURL,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // bottom text
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            alignment: context.locale == Locale('en')
                                ? Alignment.bottomLeft
                                : Alignment.bottomRight,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Colors.black.withAlpha(0),
                                    Colors.black54
                                  ],
                                ),
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              // 'grocery_home'.tr(),
                              context.locale == Locale('en')
                                  ? categoryModel.name
                                  : categoryModel.name_ar,
                              // categoryModel.name,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
