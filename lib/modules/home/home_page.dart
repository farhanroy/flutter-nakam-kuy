import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF18902),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Get.toNamed(AppRoutes.aboutPath),
                      icon: const Icon(Icons.info_outline, color: Colors.white)
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text("Wonderful of Indonesia"),
              const SizedBox(height: 16),

            ],
          ),
          Card(
            child: Container(
              width: Get.size.width,
              height: 500,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Pilihan Editor", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  _ItemHorizontal(title: "Rawon", shortDesc: "Masakan rawon"),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Pilihan Editor", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                      GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.listPath),
                        child: Text("Lainnya", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),

                  _ItemVertical(title: "Rawon", shortDesc: "Masakan rawon"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ItemHorizontal extends StatelessWidget {
  final String title;
  final String shortDesc;
  const _ItemHorizontal({Key? key, required this.title, required this.shortDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 218,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.black.withOpacity(0.25)
      ),
      child: Column(
        children: [
          Text(title),
          Text(shortDesc)
        ],
      ),
    );
  }
}

class _ItemVertical extends StatelessWidget {
  final String title;
  final String shortDesc;
  const _ItemVertical({Key? key, required this.title, required this.shortDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 218,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.black.withOpacity(0.25)
          ),
        ),
        SizedBox(width: 24,),
        Column(
          children: [
            Text(title),
            SizedBox(height: 8,),
            Text(shortDesc),
          ],
        )
      ],
    );
  }
}

