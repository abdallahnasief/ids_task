
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ids_task/models/items.dart';
import 'package:ids_task/models/type.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Type> types1 = [];
  List<Type> types2 = [];
  List<Item> items = [];
  int selectedIndex1;
  int selectedIndex2;

  @override
  void initState() {
    super.initState();
    fillVariables();
    selectedIndex1 = 0;
    selectedIndex2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFebeef5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFbc4096),
        toolbarHeight: height * 0.1,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Center(child: Text('Frozen')),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height*0.06,
                  child: _types1List1(),
                ),
                Container(
                  height: height*0.06,
                  child: _types1List2(),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height*0.72,
                  child: Container(child: _items()),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  void fillVariables() {
    types1.add(new Type(1, "All"));
    types1.add(new Type(2, "Chips"));
    types1.add(new Type(3, "Juice"));
    types1.add(new Type(4, "Hot Drinks"));
    types1.add(new Type(5, "Cold Drinks"));
    types1.add(new Type(6, "Cheese"));
    types2.add(new Type(1, "All"));
    types2.add(new Type(2, "Chips"));
    types2.add(new Type(3, "Juice"));
    types2.add(new Type(4, "Hot Drinks"));
    types2.add(new Type(5, "Cold Drinks"));
    types2.add(new Type(6, "Cheese"));

    items.add(new Item(
        1,
        0,
        "http://webadvance.novelty-team.com/pic/1.png",
        "London dairy double chocolate cone ice cream",
        "",
        0,
        10,
        "......",
        2000,
        4.5));
    items.add(new Item(
        2,
        50,
        "http://webadvance.novelty-team.com/pic/2.png",
        "London dairy ice cream S/Berry cup",
        "5 Jd",
        1,
        2.5,
        "80gm",
        1400,
        4.7));
    items.add(new Item(3, 35, "http://webadvance.novelty-team.com/pic/3.png",
        "Galaxy almond stick", "1 + 2 free", 0, 7.2, "71gm", 3000, 4.3));
    items.add(new Item(4, 40, "http://webadvance.novelty-team.com/pic/4.png",
        "Tomato fresh per 500 gm", "", 0, 5, "500gm", 2400, 3.8));
    items.add(new Item(
        5,
        0,
        "http://webadvance.novelty-team.com/pic/5.png",
        "London dairy double chocolate cone ice cream",
        "",
        0,
        10,
        "......",
        2000,
        4.5));
    items.add(new Item(
        6,
        50,
        "http://webadvance.novelty-team.com/pic/6.png",
        "London dairy ice cream S/Berry cup",
        "5 Jd",
        1,
        2.5,
        "80gm",
        1400,
        4.7));
    items.add(new Item(7, 31, "http://webadvance.novelty-team.com/pic/7.png",
        "Galaxy almond stick", "1 + 2 free", 0, 7.2, "71gm", 3000, 4.3));
    items.add(new Item(8, 40, "http://webadvance.novelty-team.com/pic/1.png",
        "Tomato fresh per 500 gm", "", 0, 5, "500gm", 2400, 3.8));
    items.add(new Item(
        2,
        45,
        "http://webadvance.novelty-team.com/pic/2.png",
        "London dairy ice cream S/Berry cup",
        "5 Jd",
        1,
        2.5,
        "80gm",
        1400,
        4.7));
    items.add(new Item(3, 30, "http://webadvance.novelty-team.com/pic/3.png",
        "Galaxy almond stick", "1 + 2 free", 0, 7.2, "71gm", 3000, 4.3));
    items.add(new Item(4, 20, "http://webadvance.novelty-team.com/pic/4.png",
        "Tomato fresh per 500 gm", "", 0, 5, "500gm", 2400, 3.8));
    items.add(new Item(
        5,
        0,
        "http://webadvance.novelty-team.com/pic/5.png",
        "London dairy double chocolate cone ice cream",
        "",
        0,
        10,
        "......",
        2000,
        4.5));
    items.add(new Item(
        6,
        10,
        "http://webadvance.novelty-team.com/pic/6.png",
        "London dairy ice cream S/Berry cup",
        "5 Jd",
        1,
        2.5,
        "80gm",
        1400,
        4.7));
    items.add(new Item(7, 50, "http://webadvance.novelty-team.com/pic/7.png",
        "Galaxy almond stick", "1 + 2 free", 0, 7.2, "71gm", 3000, 4.3));
  }

  Widget _types1List1() {
    return ListView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: types1.length,
        padding: EdgeInsets.symmetric(horizontal: 3),
        itemBuilder: (context, index) {
          return index == selectedIndex1
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xFFbc4096),
                    elevation: 0,
                    child: Row(
                      children: [
                        Text(
                          types1[index].title,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 0,
                    child: Text(
                      types1[index].title,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedIndex1 = index;
                      });
                    },
                  ),
                );
        });
  }

  Widget _types1List2() {
    return ListView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: types2.length,
        padding: EdgeInsets.symmetric(horizontal: 3),
        itemBuilder: (context, index) {
          return index == selectedIndex2
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xFFbc4096),
                    elevation: 0,
                    child: Row(
                      children: [
                        Text(
                          types2[index].title,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 0,
                    child: Text(
                      types2[index].title,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedIndex2 = index;
                      });
                    },
                  ),
                );
        });
  }


Widget _items() {
  return new StaggeredGridView.countBuilder(
    crossAxisCount: 2,
    itemCount:  items.length,
    itemBuilder: (BuildContext context, int index) {
      return new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(new Radius.circular(15.0)),
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        color: Color(0xFFf2f3f7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 170,
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(items[index].imgUrl),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(new Radius.circular(15.0)),
                    ),
                  ),
                  items[index].discount != 0
                      ? Positioned(
                    left: 20.0,
                    top: -6,
                    child: Icon(
                      Icons.bookmark_sharp,
                      color: Colors.red,
                      size: 50,
                    ),
                  )
                      : Container(),
                  items[index].discount != 0
                      ? Positioned(
                      left: 35.0,
                      top: 7.0,
                      child: Text(

                        "OFF\n%" + items[index].discount.toString(),

                        style: TextStyle(color: Colors.white, fontSize: 10),
                        textAlign: TextAlign.center,
                      ))
                      : Container(),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: MediaQuery.of(context).size.width,

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  items[index].description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            items[index].offerStatus == 0
                ? Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Text(
                  items[index].offer,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            )
                : Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
              child: Padding(
                padding:
                const EdgeInsets.fromLTRB(14.0, 0.0, 10.0, 0.0),
                child: Text(
                  items[index].offer,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Container(

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Text(
                          items[index].price.toString() + "JD",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.red[900],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "/" + items[index].weight,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.red[900],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),

                    IconButton(
                      icon: new Icon(
                        Icons.menu,
                        color: Colors.green[900],
                      ),
                      onPressed: (){

                      },
                    ),
                  ],
                ),
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      items[index].sold.toString() + " Sold",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5, 0.0),
                     child: Row(

                       children: [
                         Text(
                           items[index].rate.toString(),
                           maxLines: 1,
                           overflow: TextOverflow.ellipsis,
                           style: TextStyle(
                             color: Colors.green,
                             fontSize: 9,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Icon(
                           Icons.star,
                           color: Colors.green[900],
                           size: MediaQuery.of(context).size.width / 40,
                         ),
                       ],
                     ),
                   )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
              child: Container(

                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                  border: new Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                width: MediaQuery.of(context).size.width/2.4,
                height: 40,
                child: MaterialButton(
                  child: Text(
                    'Add to Cart',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),

                  onPressed: () {
                    //Do something
                  },
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
          ],
        ),
      );
    },
    staggeredTileBuilder: (int index) =>

        StaggeredTile.fit(1),
    mainAxisSpacing: 4.0,

    crossAxisSpacing: 4.0,
  );
}
}
