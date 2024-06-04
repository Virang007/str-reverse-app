import 'package:flutter/material.dart';

class strRev extends StatefulWidget {
  const strRev({super.key});

  @override
  State<strRev> createState() => _strRevState();
}

class _strRevState extends State<strRev> {
  TextEditingController str_controller = TextEditingController();
  var simpleStr ='Thats good';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("GOOD"+"->"+"DOOG",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller:str_controller,
                decoration: InputDecoration(
                  hintText: 'Enter any Word reversal',
                  
                ),
              ),
            ),
             SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              onPressed: (){
              if (str_controller.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: Text("is Emty no allowe plz enter some text")));
              }else{
                setState(() {
              simpleStr = reverseStr(str_controller.text);
           });
              }
            }, child: Text("rev-str",style: TextStyle(fontSize: 20,color:Colors.white),)),
            SizedBox(
              height: 30,
            ),
      
            Text(simpleStr,style: TextStyle(fontSize: 20,color:Colors.red),)
          ],
        ),
      ),
    );
  }
}

String reverseStr (String val){
  return val.split('').reversed.join();
}