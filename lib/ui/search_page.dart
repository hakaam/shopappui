import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is Search ',
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
