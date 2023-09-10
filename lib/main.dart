import 'package:flutter/material.dart';
import 'package:flutter_rest_api_1/screen/curency_converter_home_page.dart';



void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.light(useMaterial3:false),
    
      
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}



