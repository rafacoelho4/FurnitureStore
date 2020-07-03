import 'package:flutter/material.dart';
import 'package:furniture_store/constants.dart';
import 'package:furniture_store/models/product.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Furniture',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24.0, color: kTextColor),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.format_align_center,
              color: kPrimaryColor,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Main(),
      // body: Container(
      //   child: Text('testando'),
      // )
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text('Main'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        elevation: 0,
        currentIndex: 0,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        //onTap: () {},
      ),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int selectedItem = 1;
  List<String> catagories = ['Armchair', 'Bed', 'Lamps', 'Tables'];

  void _selectCatagory(int newCatagory) {
    setState(() {
      selectedItem = newCatagory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        color: Colors.white,
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catagories.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    _selectCatagory(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: index == selectedItem
                          ? kPrimaryColor
                          : Colors.grey[300],
                    ),
                    // margin: EdgeInsets.symmetric(
                    //   horizontal: kDefaultPadding - 10,
                    // ),
                    margin: EdgeInsets.fromLTRB(
                        index == 0 ? 20 : 0, 0, kDefaultPadding, 0),
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.fullscreen_exit,
                            color: index == selectedItem
                                ? Colors.white
                                : kPrimaryColor),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '${catagories[index]}',
                          style: TextStyle(
                              color: index == selectedItem
                                  ? Colors.white
                                  : kPrimaryColor),
                        )
                      ],
                    ),
                  ),
                )),
      ),
      Container(
        // margin: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${products.length} products',
              style: TextStyle(color: kTextLightColor, fontSize: 14.0),
            ),
            FlatButton.icon(
              label: Text('Most popular'),
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ],
        ),
      ),
      ProductsList()
    ]);
  }
}

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: <Widget>[
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: products
              .map((item) => Container(
                  width: 150,
                  height: 200,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white54, Colors.grey[200]])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                        '${item.image}',
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '${item.title}',
                        style: TextStyle(color: kTextLightColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${item.price}.00'),
                          Text('${item.stars}')
                        ],
                      )
                    ],
                  )))
              .toList()
              .cast<Widget>(),
        )
      ],
    ));
  }
}

class ProductCard extends StatelessWidget {
  ProductCard(String title);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 200,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white54, Colors.grey[200]])),
        child: Column(
          children: <Widget>[
            Text('Nome'),
          ],
        ));
  }
}
