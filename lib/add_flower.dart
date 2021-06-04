import 'package:flutter/material.dart';
import 'package:flutter_states/model/item.dart';
import 'package:provider/provider.dart';

class AddFlower extends StatefulWidget {
  @override
  _AddFlowerState createState() => _AddFlowerState();
}

class _AddFlowerState extends State<AddFlower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
      child: ElevatedButton(onPressed: () {
        //flowerNotify.addFlower(Flower(color: 'dark',type: 'salam'));
      Provider.of<DarkFlowersModel>(context,listen: false).addFlower(Flower(color: 'dark',type: 'salam'));
      
      }, child: Text("Add"),),
    ),
    );
  }
}