import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hubbo/models/ActivityTypeData.dart';
import 'package:hubbo/utils/style.dart';
import 'package:hubbo/widget/ActivityCard.dart';
import 'package:hubbo/widget/CircularProgress.dart';
import 'package:hubbo/widget/GridTilesCategory.dart';
import 'package:hubbo/models/ActivityModel.dart';
import 'package:hubbo/utils/Urls.dart';
import 'package:http/http.dart';

ActivityModel activityModel;

class ActivityScreen extends StatefulWidget {
  @override
  _ActivithyHomePageState createState() => _ActivithyHomePageState();
}

class _ActivithyHomePageState extends State<ActivityScreen> {
  int value = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        title: Text('Activity',style: TextStyle(),),
        elevation: 1.0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10,left: 6,right: 6),
        child: Column(
          children: <Widget>[
//            buildAppBar(),
            buildFoodFilter(),
            buildFoodList(),
//            buildShowCart(),
          ],
        ),
      ),
    );
  }
  Widget buildFoodFilter() {
    return Container(
      height: 50,
      //color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: List.generate(activityTypes.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChoiceChip(
              selectedColor: mainColor,
              labelStyle: TextStyle(
                  color: value == index ? Colors.white : Colors.black),
              label: Text(activityTypes[index]),
              selected: value == index,
              onSelected: (selected) {
                setState(() {
                  value = selected ? index : null;
                });
              },
            ),
          );
        }),
      ),
    );
  }

  Widget buildFoodList() {
    return Expanded(
      child: GridView.builder(
        itemCount: activities.length,
        physics: BouncingScrollPhysics(),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.755,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return ActivityCard(activities[index]);
        },
      ),
    );
  }

  Widget buildShowCart() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          onPressed: () {
//            Navigator.of(context).pop();
//            Navigator.push(
//                context, MaterialPageRoute(builder: (context) => OrderPage()));
          },
          padding: EdgeInsets.only(right: 12.0, left: 12),
          color: Color(0xff9bca5d),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      onPressed: () {
//                        Navigator.of(context).push(MaterialPageRoute(
//                            builder: (BuildContext context) => OrderPage()));
                      }),
                  Positioned(
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(shape: BoxShape.circle,),
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Text('ດຳເນີນການສັ່ງຊື້',
                  style: TextStyle(
                      color: secondColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,)),
            ],
          )
      ),
    );
  }
}
