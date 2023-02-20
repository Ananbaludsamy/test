// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce5/components/banner.dart';
import 'package:ecommerce5/components/menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            child: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child:
                  Container(), /*Image.asset(
                  "assets/icons/user.png",
                  fit: BoxFit.cover,
                )*/
            ),
          ),
        ),
        title: Text(
          "Monday Shopee",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        // title: Container(
        //   height: 50,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //     color: Colors.white,
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 10),
        //     child: TextFormField(
        //       decoration: InputDecoration(
        //           hintText: "search ...",
        //           prefixIcon: Icon(Icons.search),
        //           border: InputBorder.none),
        //     ),
        //   ),
        // ),
        actions: [
          Center(
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Get.toNamed("/cart");
                    },
                    icon: Icon(Icons.shopping_cart)),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            BannerComponents(),
            SizedBox(height: 20),
            MenuCompuments(),
          ],
        ),
      ),
    );
  }
}
