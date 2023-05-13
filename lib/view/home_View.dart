import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practicies/controller/home_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: homeController.fruits.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    homeController.addToFaviorate(homeController.fruits[index]);
                  },
                  title: Text(homeController.fruits[index]),
                  trailing: Obx(() {
                    return Icon(
                      Icons.favorite_sharp,
                      color: homeController.favoriteFruit
                              .contains(homeController.fruits[index])
                          ? Colors.red
                          : Colors.black,
                    );
                  }),
                );
              },
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: homeController.favoriteFruit.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: () {
                        // favoriteFruit.add(fruits[index]);
                      },
                      title: Text(homeController.favoriteFruit[index]),
                      trailing: Icon(Icons.favorite_sharp));
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
