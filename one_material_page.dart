import 'package:flutter/material.dart';

class OneMaterialPagee extends StatefulWidget{
  const OneMaterialPagee({super.key});

  @override
  State createState() =>_OneMaterialPageState();
}

class _OneMaterialPageState extends State{
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(50),
                  );



    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        backgroundColor:const Color(0xFF2563EB),
        title: const Text("Currency Converter"),
        elevation: 100,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
      ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
               Text("INR ${result.toStringAsFixed(2)}",style: const TextStyle(
                color: Color(0xFF1E293B),
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),),
              

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    filled:   true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                    hintText: "Please enter the amount in USD",
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0)
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined,color:Color(0xFF64748B),),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text)* 81;
                  });
                }, 
                
                style: ElevatedButton.styleFrom(
                  elevation:5,
                  backgroundColor: const Color(0xFF10B981),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  minimumSize:(const Size(double.infinity, 50)),
                  shape: (const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))))
                ),
                child: const Text("Convert"), 
                             
                ),
              ),
               
            ],
          )
            
          ),
      );
  }
}



