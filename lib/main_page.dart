import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  Mainpage({Key? key}) : super(key: key);

  
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //title & icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Plantin',
                style: TextStyle(fontSize: 26),
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              )
            ],
          ),

          //search bar
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
              ),
              child: const TextField(
                
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.only(top: 5),
                  hintText: 'Find your plant here . . .',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                  ),
              ))
        ],
      )),
    );
  }
}
