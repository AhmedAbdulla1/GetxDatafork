import 'package:get/get.dart';
import 'package:sec_it_developers_getx_course/Model/Modelling.dart';
import 'package:flutter/services.dart';
import 'package:sec_it_developers_getx_course/Services/Service.dart';

class ProductController extends GetxController {
  var IsLoading = true.obs;
  late Rx<Future<List<ProductList>>> Productlist;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void Fetchproduct() async {
    print("i'm in fetchproduct");
    try {
      //check isloading null? -> await ll data
      IsLoading(true);
      var product = await DataService.fetchProduct().obs;
      if (product != null) {
        Productlist = product;
        print("I'm in try in fetchproduct");
      }
    } finally {
      IsLoading(false);
    }
  }
}
