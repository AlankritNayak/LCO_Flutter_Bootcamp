import 'package:flutter/material.dart';

class MyMoney extends StatefulWidget {
  @override
  _MyMoneyState createState() => _MyMoneyState();
}

class _MyMoneyState extends State<MyMoney> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Payment Methods",style: TextStyle(fontWeight:FontWeight.bold, fontSize:15),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/upi.jpg"), radius: 30,),
                    Text("Bank Account")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/credit.jpg"), radius: 30,),
                    Text("Debit Card")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/debit.jpg"), radius: 30,),
                    Text("Credit Card")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/paypal.jpg"), radius: 30,),
                    Text("Pay Pal")
                  ],),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Wallets/ Gift Vouchers",style: TextStyle(fontWeight:FontWeight.bold, fontSize:15),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/pe.png"), radius: 30,),
                    Text("PhonePe Wallet")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/freecharge.jpg"), radius: 30,),
                    Text("Freecharge")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/airtel.jpg"), radius: 30,),
                    Text("Airtel Money")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/jio.png"), radius: 30,),
                    Text("Pay Pal")
                  ],),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Payment Management",style: TextStyle(fontWeight:FontWeight.bold, fontSize:15),
            ),
          ),
           SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/AutoPay.png"), radius: 30,),
                    Text("AutoPay")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/reminder.png"), radius: 30,),
                    Text("Reminder")
                  ],),
                ),
                
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Wealth Management",style: TextStyle(fontWeight:FontWeight.bold, fontSize:15),
            ),
          ),
           SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/gold.jpg"), radius: 30,),
                    Text("Gold")
                  ],),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Column(children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage("assets/tax.png"), radius: 30,),
                    Text("Tax Saving Fund")
                  ],),
                ),
                
              ],
            ),
          ),
      ],)
    );
  }
}