import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  // const CalculatorPage({ Key? key }) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController amount = new TextEditingController();
  TextEditingController price = new TextEditingController();
  int totalAmount = 0;

  @override
  void initState() {
    super.initState();
    price.text = 10.toString();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/bus.png", width: 200),
                Text("โปรแกรมคำนวณค่ารถโดยสาร", style: TextStyle(fontSize: 30, fontFamily: "Kanit"),),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: TextField(
                    controller: price,
                    decoration: InputDecoration(
                      labelText: "ค่าตั๋วคนละ", 
                      border: OutlineInputBorder()),
                  ),
                ),
                // Text("ค่าตั๋วคนละ $price บาท", style: TextStyle(fontSize: 20, fontFamily: "Kanit"),),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                  child: TextField(
                    controller: amount,
                    decoration: InputDecoration(
                      labelText: "จำนวนคน", 
                      border: OutlineInputBorder()),
                  ),
                ),
                Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green
                        ),
                      )
                    ),
                    TextButton(
                      onPressed: () {
                        print("amountL ${amount.text}");
                        print("price: ${price.text}");
                        setState(() {
                          totalAmount = int.parse(amount.text) * int.parse(price.text);
                        });
                      }, 
                      child: Text("คำนวณ"),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        primary: Colors.white,
                        textStyle: TextStyle(fontSize: 20)
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 30,),
                Text("ค่าตั๋วทั้งหมดเท่ากับ $totalAmount บาท", style: TextStyle(fontSize: 20,color: Colors.green, fontFamily: "Kanit"),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}