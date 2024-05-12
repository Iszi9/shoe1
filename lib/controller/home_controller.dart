 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/product.dart';

class HomeController extends GetxController{

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;


  @override
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  addProduct(){
    DocumentReference doc = productCollection.doc();
    Product product = Product(
      id:doc.id,
      name:'test name from flutter',
      category:'Boots',
      description: 'test category from flutter',
      price: 700,
      brand: 'Adidas',
      image:'img url',
      offer: true,
    );
  }

}