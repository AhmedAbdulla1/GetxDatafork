import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:sec_it_developers_getx_course/Controller/Controller.dart';

class MYGridView extends StatelessWidget {
  MYGridView({super.key});

  @override
  var injection = Get.put(ProductController());
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 100,
          color: Colors.green,
        );
      },
    );
  }
}
