import 'package:flutter/material.dart';
import 'package:flutter_application/model/model_data.dart';

class Mainpage extends StatefulWidget {
  
  Mainpage({Key? key}) : super(key: key);


  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //title & icon
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Plantin.',
                  style: TextStyle(fontFamily: 'Playfair', fontSize: 30),
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
          ),

          //search bar
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: 320,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 3),
                    hintText: 'Find your plants here . . .',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              )),

          //slide
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 200,
              width: 350,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: plantDataList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final plantData plant = plantDataList[index];
                    return InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 150,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                plant.imageAsset,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(plant.name),
                                            Text(plant.price)
                                          ],
                                        ),
                                        IconButton(onPressed: (){
                                          setState(() {
                                            isFavorite = !isFavorite;
                                            print(isFavorite);
                                          });
                                        }, icon: Icon(Icons.favorite_border))
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      )),
    );
  }
}
