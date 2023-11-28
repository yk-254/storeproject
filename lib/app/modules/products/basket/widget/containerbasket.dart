import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerBasket extends StatelessWidget {
  final count = 0.obs;
  ContainerBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(0, 1),
              color: Colors.grey.shade300)
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 100,
      width: 300,
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: "https://soshiyatech.ir/shampoo.jpg",
            height: 80,
            width: 60,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
              strokeWidth: 1,
            )),
            errorWidget: (context, url, error) =>
                Center(child: Icon(Icons.error)),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "شامپو مخصوص موهای خشک",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
              Text(
                "حجم 389 میلی لیتر / 13.15 fl.oz",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                           if(count.value>0) count.value--;
                          },
                          child: Icon(
                            Icons.remove_circle,
                            color: Color(0xFFBC9160),
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Obx(() => Text("${count.value}")),
                      SizedBox(
                        width: 5,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            count.value++;
                          },
                          child: Icon(
                            Icons.add_circle,
                            color: Color(0xFF37251C),
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xFFBC9160),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "\$500000000",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.close,
                color: Colors.grey.shade400,
                size: 15,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
