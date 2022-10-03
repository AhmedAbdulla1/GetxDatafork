import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sec_it_developers_getx_course/Controller/Controller.dart';
import 'package:sec_it_developers_getx_course/Model/Modelling.dart';
import 'package:sec_it_developers_getx_course/View/Widget/GridView.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController injection = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Make up mvc app"),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            size: 25,
          ),
        ],
        backgroundColor: Colors.grey.shade500,
      ),
      body: Column(children: [
        Expanded(
          child: Obx(
            () {
              if (injection.IsLoading.value == true) {
                print("I'm in obx");

                injection.Fetchproduct();
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return MYGridView();
              }
            },
          ),
        ),
      ]),
    );
  }
}
