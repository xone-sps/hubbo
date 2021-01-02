import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hubbo/utils/style.dart';


class Profile extends StatefulWidget {
//  const FoodDetail({ Key key, this.food }) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {
  bool turnAppNotification = false;
  bool turnOnTracking = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: secondColor));
    return Scaffold(
      backgroundColor: secondColor,
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(0, 4.0),
                              color: Colors.black12)
                        ],
                        image: DecorationImage(
                          image: AssetImage("assets/images/empty_wish_list.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Xone Sengphosy",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "020 52202014",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: () {
//                          Navigator.of(context).push(MaterialPageRoute(
//                              builder: (BuildContext context) =>
//                                  EditProfile()));
                        },
                        child: Container(
                          width: 60.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(color: mainColor)),
                          child: Center(
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: mainColor,),
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Dashboard",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                       onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.history,color: mainColor,),
                          title: Text('My activity'),
                          subtitle: Text('Apply for activity 3 times'),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.save,color: mainColor,),
                        title: Text('Saved'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.timer,color: mainColor,),
                        title: Text('Doing activity'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.favorite,color: mainColor,),
                        title: Text('Favorite activity'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.cake,color: mainColor,),
                        title: Text('Birthday 22/06/1995'),
                      ),
                      ListTile(
                        leading: Icon(Icons.pregnant_woman,color: mainColor,),
                        title: Text('Female'),
                      ),
                      ListTile(
                        leading: Icon(Icons.email,color: mainColor,),
                        title: Text('Email'),
                      ),
                      ListTile(
                        leading: Icon(Icons.lock,color: mainColor,),
                        title: Text('Change Password'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Notification ",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "App Notification",
                            style:
                            TextStyle(fontSize: 16.0,),
                          ),
                          Switch(
                            activeColor: mainColor,
                            value: turnAppNotification,
                            onChanged: (bool value) {
                              setState(() {
                                turnAppNotification = true;
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(height: 10.0, color: mainColor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Get News",
                            style:
                            TextStyle(fontSize: 16.0,),
                          ),
                          Switch(
                            activeColor: mainColor,
                            value: turnOnTracking,
                            onChanged: (bool value) {
                              setState(() {
                                turnOnTracking = true;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                color: secondColor,
                child: Column(
                  children: <Widget>[

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
