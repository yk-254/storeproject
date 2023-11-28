import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:storeproject/app/modules/products/basket/widget/containerbasket.dart';

import '../controllers/basket_controller.dart';

class BasketView extends GetView<BasketController> {
  const BasketView({Key? key}) : super(key: key);
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
            Icon(Icons.shopping_cart, color: Color(0xFF775834)),
            Text(
              'سبد خرید',
              style: TextStyle(
                  color: Color(0xFF775834),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/products");
            },
            icon: Icon(Icons.arrow_forward_ios, color: Color(0xFF775834)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) => Container(
                child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Get.toNamed("/products/product");
                    },
                    child: ContainerBasket()),
              ],
            )),
          )
        ]),
      ),
    );
  }
}
