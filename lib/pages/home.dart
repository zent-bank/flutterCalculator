import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                  "วิธีการใช้งานระบบ Bus Calculator", 
                  style: TextStyle(fontSize: 20,fontFamily: "Kanit"),
                ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2
                  )
                ),
                child: Image.asset("assets/images/manual_image.png", width: 250,)
              ),
            ],
          ),
        ),
      ],
    );
  }
}
