import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is cart ',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold


          ),

        ),


      ),


    );
  }
}
