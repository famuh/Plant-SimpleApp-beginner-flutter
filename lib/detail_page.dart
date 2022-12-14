import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/main_page.dart';
import 'package:flutter_application/model/model_data.dart';

class detailMobile extends StatelessWidget {
  final plantData plant;
  detailMobile({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeMedia = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          //segmen 1
          Stack(
            children: [
              Center(
                child: Container(
                  width: sizeMedia.width / 2,
                  height: sizeMedia.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage(plant.imageAsset),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    FavoriteButton()
                  ],
                ),
              )
            ],
          ),

          //segmen 2
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text(plant.description,
                    style: TextStyle(fontSize: 12, color: Colors.black54)),
                const SizedBox(height: 10),
                Text(
                  'Type : ${plant.type}',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                )
              ],
            ),
          ),

          //price
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(plant.price),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      print('ditekan');
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                '${plant.name} succesfully bought !',
                                style: TextStyle(fontSize: 16),
                              ),
                              content: Text(
                                'Thankyou for buying ${plant.name}, hope you enjoy it :D',
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          });
                    },
                    child: Text('Buy Now'))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class detailWeb extends StatelessWidget {
  final plantData plant;
  const detailWeb({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size sizeMedia = MediaQuery.of(context).size;
    return Scaffold(
      body:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            //segmen 1
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      FavoriteButton()
                    ],
                  ),
                ),
            Container(
                    height: 250,
                    width: 250,
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(plant.imageAsset),
                            fit: BoxFit.cover)),
                  ),
              ],
            ),
                
              const SizedBox(width: 30),

            //segmen 2
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 300,
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    plant.name,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  Text(plant.description,
                      style: TextStyle(fontSize: 12, color: Colors.black54)),
                  const SizedBox(height: 10),

                  Text(
                    'Type : ${plant.type}',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                                    const SizedBox(height: 10),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(plant.price),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  '${plant.name} succesfully bought !',
                                  style: TextStyle(fontSize: 16),
                                ),
                                content: Text(
                                  'Thankyou for buying ${plant.name}, hope you enjoy it :D',
                                  style: TextStyle(fontSize: 14),
                                ),
                              );
                            });
                      },
                      child: Text('Buy Now'))
                ],
              ),
            )
                ],
              ),
            ),

            
          ],
        ),
      
    );
  }
}