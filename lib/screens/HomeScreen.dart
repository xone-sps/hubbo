import 'package:flutter/material.dart';
import 'package:hubbo/components/BrandHome.dart';
import 'package:hubbo/components/CategorySlider.dart';
import 'package:hubbo/widget/CategoryActivity.dart';
import 'package:hubbo/widget/Search.dart';
import 'package:hubbo/widget/TopSlider.dart';
import 'package:hubbo/components/ActivityHomePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchWidget(),
          TopSlider(),
          CategoryActivity(),
          SizedBox(
            height: 10,
            child: Container(
              color: Color(0xFFf5f6f7),
            ),
          ),
          PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Lates',
                ),
                Tab(
                  text: 'Organize',
                ),
                Tab(
                  text: 'Pupular',
                )
              ], // list of tabs
            ),
          ),
          SizedBox(
            height: 10,
            child: Container(
              color: Color(0xFFf5f6f7),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  color: Colors.white24,
                  child: CategoryPage(slug: 'categories/'),
                ),
                Container(
                  color: Colors.white24,
                  child: BrandHomePage(slug: 'brands/?limit=20&page=1'),
                ),
                Container(
                  color: Colors.white24,
                  child: ActivityHomePage(
                    slug: 'custom/shops/?page=1&limit=15',
                  ),
                ) // class name
              ],
            ),
          ),
        ],
      ),
    );
  }
}
