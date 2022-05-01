import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/Controller.dart';

class Other extends StatelessWidget {
  //通过Get.find()找到另一个页面的控制器
  final Controller c = Get.find();

  @override
  Widget build(context){
    //显示更新后的count值
    return Scaffold(body: Center(child: Text("${c.count}")));
  }

}