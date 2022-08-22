import 'package:flutter/material.dart';
import 'package:flutter_application/detail_page.dart';
import 'package:flutter_application/model/model_data.dart';

class Mainpage extends StatefulWidget {
  
  Mainpage({Key? key}) : super(key: key);


  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final _scrollController = ScrollController();
  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }
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
                  child: IconButton(onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('profile'),
                      );
                    });
                  }, icon: Icon(Icons.person)),
                )
              ],
            ),
          ),

          //search bar
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width <= 600 ? 320 : 500,
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
              width: MediaQuery.of(context).size.width <= 600 ? 350 : 800,
              child: Scrollbar(
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: plantDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final plantData plant = plantDataList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MediaQuery.of(context).size.width <= 600 ? detailMobile(plant: plant) : detailWeb(plant: plant);
                          }));
                        },
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
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(plant.name, style: TextStyle(fontWeight: FontWeight.w600),),
                                              Text(plant.price, style: TextStyle(fontSize: 12),)
                                            ],
                                          ),
                                          FavoriteButton()
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
            ),
          )
        ],
      )),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: isFavorite == true ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
    );
  }
}

