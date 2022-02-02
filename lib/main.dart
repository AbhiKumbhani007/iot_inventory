import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot/controllers/component_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final ComponentController componentController = Get.put(ComponentController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final ComponentController componentController = Get.find();
  @override
  Widget build(BuildContext context) {
    debugPrint("componentController length: ${componentController.componentList.value.length}");
    return  Scaffold(
      appBar: AppBar(title: Text("test"),),
      body: Obx(()=>ListView.builder(itemCount: componentController.componentList.value.length,
      itemBuilder: (context, index){
        return 
           Text("componentName : ${componentController.componentList.value[index].componentName}");
        
      } ,))
    );
  }
}


