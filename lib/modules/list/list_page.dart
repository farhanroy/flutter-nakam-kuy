import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Get.back(),
        ),
        title: Text("List Makanan"),

      ),
      body: Column(

      ),
    );
  }
}
