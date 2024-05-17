import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product.dart';

class HomeController extends GetxController{

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  //yo, controllers using Getx to receive the product details dynamically from add_product_page fields
  TextEditingController productNameCtrl = TextEditingController();
  TextEditingController productDescriptionCtrl = TextEditingController();
  TextEditingController productImgCtrl = TextEditingController();
  TextEditingController productPriceCtrl = TextEditingController();

  //yo, for the fields in dropdown buttons
  String category = 'uncategorized';
  String brand = 'un branded';
  bool offer = false;


  @override
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  //yo, doc to receive info sent from getx from add_product_page fields and creating in database
  addProduct() {
    try{
    DocumentReference doc = productCollection.doc();
    Product product = Product(
      id: doc.id,
      name: productNameCtrl.text,
      category: 'Boots',
      description: productDescriptionCtrl.text,
      price: double.tryParse(productPriceCtrl.text),
      //yo, typecasting the text sting received to double to suit databse design
      brand: 'Adidas',
      image: productImgCtrl.text,
      offer: offer,
    );
    final productJson = product.toJson();
    doc.set(productJson);
    Get.snackbar(
        'Success', 'Product added successfully', colorText: Colors.green);
    setValuesDefault();
  }catch(e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
      print(e);
    }
  }

  setValuesDefault(){
    productNameCtrl.clear();
    productPriceCtrl.clear();
    productDescriptionCtrl.clear();
    productImgCtrl.clear();
    category = 'uncategorized';
    brand = 'un branded';
    offer = false;
    update();
  }

}