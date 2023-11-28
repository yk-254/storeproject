
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:storeproject/app/modules/products/widget/containerproduct.dart';
import 'package:storeproject/public/searchbar.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 222, 218),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.shopping_cart, color: Color(0xFFE0B583)),
            Text(
              'محصولات',
              style: TextStyle(
                  color: Color(0xFFE0B583),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/products/basket");
            },
            icon: Icon(Icons.shopping_basket_rounded, color: Color(0xFFE0B583)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          searchBar(),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) => Container(
                child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Get.toNamed("/products/product");
                    },
                    child: ContainerProduct()),
              ],
            )),
          )
        ]),
      ),
    );
  }
}
