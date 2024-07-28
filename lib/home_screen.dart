import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('home screen'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Obx(()=> Column(
                children: [

                  Text(controller.index.toString(),
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MaterialButton(
                      onPressed: () {
                        // Get.toNamed('/firstScreen');
                        controller.increaseIndex();
                      },
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: Colors.red,
                      child: Text('first Screen'),
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
