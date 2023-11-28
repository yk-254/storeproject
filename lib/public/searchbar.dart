import 'package:flutter/material.dart';
import 'package:get/get.dart';

final TextEditingController _searchController = TextEditingController();
var searchLength = 0.obs;
Container searchBar() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 1),
            color: Colors.grey.shade300)
      ],
      borderRadius: BorderRadius.circular(10),
    ),
    height: 45,
    width: 250,
    child: Obx(() {
      return TextFormField(
        onChanged: (val) {
          searchLength.value = val.length;
        },
        textAlignVertical: TextAlignVertical.center,
        controller: _searchController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          fillColor: Colors.grey.shade200,
          hintText: ' جست و جو ',
          hintStyle: TextStyle(
            fontSize: 12,
            color: Color(0xFF858585),
          ),
          prefixIcon: InkWell(
            onTap: () {},
            child: Icon(
              Icons.search_rounded,
              color: Color(0xFF775834),
            ),
          ),
          suffixIcon: searchLength.value > 0
              ? InkWell(
                  onTap: () => _searchController.clear(),
                  child: Icon(
                    Icons.clear,
                    color: Color(0xFF775834),
                  ),
                )
              : null,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(5.0),
          // ),
        ),
      );
    }),
  );
}
