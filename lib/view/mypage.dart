import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shoppoinglist/view/product_tile.dart';
import '../controller/controller.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lee Shop',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.view_list_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Obx(
            () => GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: ((context, index) {
                return ProductTile(
                  controller.productList[index],
                );
              }),
              itemCount: controller.productList.length,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          'item',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        icon: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
