import 'package:eshop_center/models/sneaker_model.dart';
import 'package:flutter/services.dart' as the_bundle;

class Helper {
  Future<List<Sneakers>> getMaleSneakers() async {
    final data =
        await the_bundle.rootBundle.loadString('json/women_shoes.json');
    final maleList = sneakersFromJson(data);
    return maleList;
  }

  // Future<List<Sneakers>> getFeMaleSneakers() async {
  //   final data =
  //       await the_bundle.rootBundle.loadString('json/women_shoes.json');
  //   final feMaleList = sneakersFromJson(data);
  //   return feMaleList;
  // }
  //
  // Future<List<Sneakers>> getKidsSneakers() async {
  //   final data = await the_bundle.rootBundle.loadString('json/kids_shoes.json');
  //   final kidsList = sneakersFromJson(data);
  //   return kidsList;
  // }
  //
  // // Single Male
  // Future<Sneakers> getMaleSneakersById(String id) async {
  //   final data = await the_bundle.rootBundle.loadString('json/men_shoes.json');
  //   final maleList = sneakersFromJson(data);
  //   final sneaker = maleList.firstWhere((sneaker) => sneaker.id == id);
  //   return sneaker;
  // }
  //
  // //Single Female
  // Future<Sneakers> getFeMaleSneakersById(String id) async {
  //   final data =
  //       await the_bundle.rootBundle.loadString('json/women_shoes.json');
  //   final maleList = sneakersFromJson(data);
  //   final sneaker = maleList.firstWhere((sneaker) => sneaker.id == id);
  //   return sneaker;
  // }
  //
  // //Single Kids
  // Future<Sneakers> getKidsSneakersById(String id) async {
  //   final data = await the_bundle.rootBundle.loadString('json/kids_shoes.json');
  //   final maleList = sneakersFromJson(data);
  //   final sneaker = maleList.firstWhere((sneaker) => sneaker.id == id);
  //   return sneaker;
  // }
}
