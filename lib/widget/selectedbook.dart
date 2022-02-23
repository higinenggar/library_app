// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, unused_import, sized_box_for_whitespace, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:library_app/widget/popular_book.dart';

import 'tab_indicator.dart';

class SelectedBookScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  SelectedBookScreen({Key? key, required this.popularBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.white,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Colors.white,
            backgroundColor: Colors.deepOrange[400],
            minimumSize: const Size(300, 60),
            elevation: 20,
          ),
          child: const Text(
            'Add To Library',
            style: TextStyle(
              fontSize: 18,
              //fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            print('login');
          },
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/homescreen");
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              title: Text(
                popularBookModel.title.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.deepOrange.withOpacity(0.4),
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color: Color(popularBookModel.color!.toInt()),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 62,
                        ),
                        width: 172,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:
                                AssetImage(popularBookModel.image.toString()),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.only(top: 24, left: 25),
                    child: Text(
                      popularBookModel.title.toString(),
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7, left: 25),
                    child: Text(
                      popularBookModel.author.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7, left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '\$',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          popularBookModel.price.toString(),
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 28,
                    margin: EdgeInsets.only(top: 23, bottom: 36),
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
                          width: 30,
                          color: Colors.deepOrange,
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 45),
                              child: Text('Description'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 45),
                              child: Text('Reviews'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 45),
                              child: Text('Similar'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    child: Text(
                      popularBookModel.description.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.withOpacity(0.8),
                        letterSpacing: 1.5,
                        height: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
