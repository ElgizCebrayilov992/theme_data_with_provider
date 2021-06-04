import 'package:flutter/material.dart';
import 'package:flutter_states/model/customer_theme_data.dart';
import 'package:flutter_states/model/item.dart';
import 'package:provider/provider.dart';

import 'shared/customer_theme.dart';

class FlowerNonView extends StatelessWidget {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null,),
      appBar: AppBar(
        actions: [
          ActionChip(label: Text("salam"), onPressed: () {
            
          },)
        ],
        leading: Text("Hello",),
        title: Consumer<DarkFlowersModel>(builder: (context, value, child) {
          // ignore: deprecated_member_use
          return Center(
            // ignore: deprecated_member_use
            child: FlatButton.icon(onPressed: () {
            //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddFlower(),));
             Provider.of<DarkFlowersModel>(context,listen: false).addFlower(Flower(color: 'dark',type: 'salam'));
            },
             icon: child!,
              label: Text(value.totalFlower.toString())),
          );
        },child: Icon(Icons.add),),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton (onPressed: () {
              Provider.of<CustomerThemeDataModal>(context,listen: false).setThemeData(ThemeData.dark());
            }, child: Text("Dark"),),
            Divider(),
             ElevatedButton (onPressed: () {
               Provider.of<CustomerThemeDataModal>(context,listen: false).setThemeData(ThemeData.light());
            }, child: Text("White"),),
              Divider(),
             ElevatedButton (onPressed: () {
               Provider.of<CustomerThemeDataModal>(context,listen: false).setThemeData(myTheme);
            }, child: Text("Customer Theme"),),
          ],
        ),
      ),
    );
  }
}
/*

 ListView.builder(
            itemBuilder: (context, index) {
              return Text(Provider.of<DarkFlowersModel>(context).list[index].color);
            },
          itemCount: Provider.of<DarkFlowersModel>(context).totalFlower,),



 */