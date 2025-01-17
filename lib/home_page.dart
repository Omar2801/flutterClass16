import 'package:anfifteenth_assi/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ///Gex object Globally
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: GetBuilder<HomeController>(
        ///Gex object
        //init: HomeController(),
          builder: (_){
            return Center(
              child: Text(
                  homeController.num.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            );
          }
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: (){
          homeController.incrementNumber();
          },
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
    );
  }
}
