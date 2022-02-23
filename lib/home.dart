// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_app/widget/selectedbook.dart';
import 'package:library_app/widget/tab_indicator.dart';

import 'widget/newbooks.dart';
import 'widget/popular_book.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.deepOrange,
            size: 25,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark_add_outlined,
              size: 25,
              color: Colors.deepOrange,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            margin: EdgeInsets.only(
              right: 20,
              top: 3,
            ),
            height: 35,
            width: 35,
            //margin: EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hi Luna, ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Good Afternoon ✌ ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  Text(
                    'Discover Your Favorite Book',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Search Book..',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrange[300],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 9,
                    child: Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  indicatorPadding: EdgeInsets.all(0),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'OpenSans'),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'OpenSans'),
                  indicator: RoundedRectTabIndicator(
                    weight: 2,
                    width: 10,
                    color: Colors.deepOrange,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('All'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Trending'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Best Seller'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              height: 210,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 25, right: 6),
                  itemCount: newbooks.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 18),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(newbooks[index].image),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: populars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectedBookScreen(
                              popularBookModel: populars[index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 19),
                      height: 81,
                      width: MediaQuery.of(context).size.width - 50,
                      color: Colors.transparent,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child:
                                  Image.asset(populars[index].image.toString()),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                populars[index].title.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                populars[index].author.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'OpenSans',
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '\$ ' + populars[index].price.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavbar(),
    );
  }

  Widget _buildBottomNavbar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 20,
            )
          ]),
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.black26,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(
                  Icons.star_outline_rounded,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Person',
                icon: Icon(
                  Icons.person_outline_rounded,
                  size: 30,
                ),
              ),
            ],
          )),
    );
  }
}
