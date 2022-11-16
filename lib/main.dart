import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model.dart';

void main(){
  runApp(GetMaterialApp(home:first() ,));
}
class first extends StatelessWidget {

  model  m=Get.put(model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Obx(() => CheckboxListTile(title: Text("650"),value:m.s.value , onChanged: <bool>(value){
            m.check(1, 670, value);
          }),),
         Obx(() =>  CheckboxListTile(title: Text("250"),value:m.s1.value , onChanged: <bool>(value){
           m.check(2, 250, value);
         }),),
        Obx(() =>   CheckboxListTile(title: Text("350"),value:m.s2.value , onChanged: <bool>(value){
          m.check(3, 350, value);
        }),),

          Obx(() => Text("Total=${m.k}")),

        ],
      ),
    );
  }
}
