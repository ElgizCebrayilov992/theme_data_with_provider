import 'package:flutter/material.dart';
import 'package:flutter_states/add_flower.dart';
import 'package:flutter_states/model/item.dart';

class FlowerView extends StatefulWidget {
  @override
  _FlowerViewState createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Navigator.push(context, MaterialPageRoute(builder: (context) => AddFlower(),));
       
       
      },),
      body: ValueListenableBuilder(
        child: Text("Hello"),
      valueListenable: flowerNotify,
       builder: (context,FlowersModel value, child) {
         return ListView.builder(
        itemCount: value.list.length,
        itemBuilder: (context, index) => Text(value.list[index].color),);
       },),
    );
  }
}