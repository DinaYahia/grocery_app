import 'package:grocery_app/models/facebookModels/user_model.dart';
import 'package:grocery_app/models/groceryModels/categories_model.dart';
import 'package:grocery_app/models/groceryModels/offer_model.dart';

List<UserModel> users = [
  UserModel(
      name: 'Omar',
      imgURL:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
  UserModel(
      name: 'Ali',
      imgURL:
          'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
  UserModel(
      name: 'Sadi',
      imgURL:
          'https://images.unsplash.com/photo-1543269664-7eef42226a21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
  UserModel(
      name: 'Mohammed',
      imgURL:
          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
  UserModel(
      name: 'Yousef',
      imgURL:
          'https://images.unsplash.com/photo-1526948531399-320e7e40f0ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
];

List<CategoryModel> categories = [
  CategoryModel(
      name: 'Fruits',
      name_ar: 'فواكه',
      imgURL:
          'https://images.unsplash.com/photo-1471943038886-87c772c31367?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  CategoryModel(
      name: 'Vegetables',
      name_ar: 'خضراوات',
      imgURL:
          'https://images.unsplash.com/photo-1609842947419-ba4f04d5d60f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  CategoryModel(
      name: 'Cheese',
      name_ar: 'أجبان',
      imgURL:
          'https://images.unsplash.com/photo-1627935722051-395636b0d8a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80'),
  CategoryModel(
      name: 'Soft drinks',
      name_ar: 'مشروبات غازية',
      imgURL:
          'https://images.unsplash.com/photo-1543253687-c931c8e01820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
  CategoryModel(
      name: 'Fruits',
      name_ar: 'فواكه',
      imgURL:
          'https://images.unsplash.com/photo-1471943038886-87c772c31367?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  CategoryModel(
      name: 'Vegetables',
      name_ar: 'خضراوات',
      imgURL:
          'https://images.unsplash.com/photo-1609842947419-ba4f04d5d60f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  CategoryModel(
      name: 'Cheese',
      name_ar: 'أجبان',
      imgURL:
          'https://images.unsplash.com/photo-1627935722051-395636b0d8a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80'),
  CategoryModel(
      name: 'Soft drinks',
      name_ar: 'مشروبات غازية',
      imgURL:
          'https://images.unsplash.com/photo-1543253687-c931c8e01820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
];

List<OfferModel> offers = [
  OfferModel(
    name: 'Lemons',
    name_ar: 'ليمون',
    imgURL:
        'https://images.unsplash.com/photo-1611567697084-103eb41f16d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    mainPrice: '19.95 \$',
    offerPrice: '10.95 \$',
    isFav: false,
  ),
  OfferModel(
    name: 'Strawberries',
    name_ar: 'فراولة',
    imgURL:
        'https://images.unsplash.com/photo-1549007953-2f2dc0b24019?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    mainPrice: '19.95 \$',
    offerPrice: '10.95 \$',
    isFav: true,
  ),
  OfferModel(
    name: 'Milk',
    name_ar: 'حليب',
    imgURL:
        'https://images.unsplash.com/photo-1563636619-e9143da7973b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
    mainPrice: '19.95 \$',
    offerPrice: '10.95 \$',
    isFav: true,
  ),
  OfferModel(
    name: 'Lemons',
    name_ar: 'ليمون',
    imgURL:
        'https://images.unsplash.com/photo-1611567697084-103eb41f16d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    mainPrice: '19.95 \$',
    offerPrice: '10.95 \$',
    isFav: false,
  ),
];

List<OfferModel> topSlider = [
  OfferModel(
    name: 'Sweet pepper',
    name_ar: 'فلفل حلو',
    imgURL:
        'https://images.unsplash.com/photo-1601648764658-cf37e8c89b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    mainPrice: '19.95 \$',
    offerPrice: '10.95 \$',
    isFav: false,
  ),
];
