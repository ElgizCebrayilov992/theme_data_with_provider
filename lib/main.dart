import 'package:flutter/material.dart';
import 'package:flutter_states/model/customer_theme_data.dart';
import 'package:flutter_states/model/item.dart';
import 'package:flutter_states/shared/customer_theme.dart';
import 'package:provider/provider.dart';

import 'flower_non_view.dart';

void main() => runApp(
 MultiProvider(providers: [
   ChangeNotifierProvider(create: (context) => DarkFlowersModel(),
   ),
     ChangeNotifierProvider(create: (context) => CustomerThemeDataModal(ThemeData.light()),
     )

 ],  child:MyApp(),)
  );


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<CustomerThemeDataModal>(context).getThemeData(),
      home: FlowerNonView(),
    );
  }
}