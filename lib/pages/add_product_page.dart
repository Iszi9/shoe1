import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe1/controller/home_controller.dart';

import '../widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Add Product'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add New Product',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: ctrl.productNameCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Product Name'),
                      hintText: 'enter your product name'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: ctrl.productDescriptionCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Product Description'),
                      hintText: 'enter your product Description'),
                  maxLines: 4,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: ctrl.productImgCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Image Url'),
                      hintText: 'enter your image url'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: ctrl.productPriceCtrl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: Text('Product Price'),
                      hintText: 'product price'),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                        child: DropDownBtn(
                          items: ['cate1', 'cate2', 'cate3'],
                          selectedItemText: 'Category',
                          onSelected: (selectedValue) {
                            print(selectedValue);
                          },
                        )),
                    Flexible(
                        child: DropDownBtn(
                          items: ['brand1', 'brand2', 'brand3'],
                          selectedItemText: 'Bramd',
                          onSelected: (selectedValue) {
                            print(selectedValue);
                          },
                        )),
                  ],
                ),
                SizedBox(height: 10),
                Text('Offer Product?'),
                DropDownBtn(
                  items: ['true', 'false'],
                  selectedItemText: 'Offer?',
                  onSelected: (selectedValue) {
                    print(selectedValue);
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white
                    ),
                    onPressed: () {
                      ctrl.addProduct();
                    }, child: Text('Add Product'))
              ],
            ),
          ),
        ),
      );
    });
  }
}
