

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignOutside
                  ) ,
                  borderRadius:BorderRadius.circular(10),
                  );

    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
               const Text("0",
               style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(250, 250, 250, 250)
               ),
               ),
               Padding(
                padding:const EdgeInsets.all(10),
                 child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText
                    : "Please enter the amount in USD",
                    hintStyle: const TextStyle(
                      color: Colors.black
                    ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor:Colors.black,
                  filled:  true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  ),
                             keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,),
                  ),
               ),
                
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: (){
                  if(kDebugMode){
                    print("Button clicked");
                  }
                  
                }, 
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.black,),
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 40 ))
                ),
                child: const Text("Convert"),
                ),
              ) 
            ],
            
          ),
        ),
      ),
    );
  }
}

