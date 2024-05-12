 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe1/pages/add_product_page.dart';
import 'package:shoe1/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Footware Admin'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Title'),
              subtitle: Text('price: 100'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  print('delete');
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddProductPage());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
