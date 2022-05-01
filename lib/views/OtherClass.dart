import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../controller/Controller.dart';

class OtherClass extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child:controller.obx(
              (state) => Text(state!.name),
          //onLoading: const CupertinoActivityIndicator(radius: 10), //加载中，默认是个Center(child:CircularProgressIndicator())
          onEmpty: const Text('No data found'), //空数据显示
          onError: (error) => Text(error!), //出错界面显示
        )),
        RaisedButton(child: Text("Loading"), onPressed: () {controller.changeLoading();},),//TextButton文字
        RaisedButton(child: Text("Success"), onPressed: () {controller.changeSuccess();},),//TextButton文字
        RaisedButton(child: Text("Empty"), onPressed: () {controller.changeEmpty();},),//TextButton文字
        RaisedButton(child: Text("Error"), onPressed: () {controller.changeError();},),//TextButton文字
      ],
      )
    );
  }
}