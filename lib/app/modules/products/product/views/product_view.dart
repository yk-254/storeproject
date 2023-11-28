import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 222, 218),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * (2 / 3),
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        
                        "https://soshiyatech.ir/shampoo.jpg",
                        scale: 1.3
                      ),
                      fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Get.toNamed("/products");
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF775834),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "شامپو مخصوص موهای خشک",
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "حجم 389 میلی لیتر / 13.15 fl.oz",
              style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(top: 5, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    "قیمت",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "قیمت محصول",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text("\$500000000",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("تخفیف",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                      Text("%10",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("قیمت کل",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                      Text("\$450000000",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.defaultDialog(title: "error", content: Text("coming soon"));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xFFBC9160),
                    borderRadius: BorderRadius.circular(5)),
                width: 155,
                height: 40,
                child: Center(
                    child: Text(
                  "خرید",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color(0xFFBC9160),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              width: 50,
              height: 40,
              child:
                  Center(child: Icon(Icons.favorite, color: Color(0xFFBC9160))),
            ),
          ],
        ),
      ),
    );
  }
}
