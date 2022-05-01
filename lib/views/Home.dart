import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/Controller.dart';
import 'Other.dart';
import 'OtherClass.dart';

class Home extends StatelessWidget {

  @override
  Widget build(context) {
    //通过Get.put()方法初始化Controller
    final Controller c = Get.put(Controller());
    return Scaffold(
      //当count变化时，Obx可以监听改变
        appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
        //通过Get.to方法取代Navigator.push代替页面间的跳转
        body: Center(child: ElevatedButton(
            child: Text("Go to Other"), onPressed: () => Get.to(OtherClass()))),
        floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment));
  }
}