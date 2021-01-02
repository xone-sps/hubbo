import 'package:flutter/material.dart';
import 'package:hubbo/models/ActivityTypeData.dart';
//import 'package:hubbo/models/ActivityData.dart';
import 'package:hubbo/utils/style.dart';
import 'package:provider/provider.dart';

class ActivityCard extends StatefulWidget {
  final ActivityData activity;
  ActivityCard(this.activity);

  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<ActivityCard> {
  ActivityData get activity => widget.activity;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
//              Navigator.of(context).push(MaterialPageRoute(
//                  builder: (BuildContext context) => FoodDetail()));
            },
            child: Card(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: buildImage(),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          children: <Widget>[
//                 buildImage(),
                            buildTitle(),
                            buildPriceInfo(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.network(
                activity.image,
                fit: BoxFit.fitWidth,
                height: 120,
                width: MediaQuery.of(context).size.width,
//            loadingBuilder: (context, Widget child, ImageChunkEvent progress) {
//              if (progress == null) return child;
//              return Padding(
//                  padding: EdgeInsets.all(40),
//                  child: CircularProgressIndicator(
//                    value: progress.expectedTotalBytes != null
//                        ? progress.cumulativeBytesLoaded /
//                            progress.expectedTotalBytes
//                        : null,
//                  ));
//            },
              ),
            ),

            Positioned(
              left: 0.0,
              bottom: 10.0,
              right: 90,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [mainColor, mainColor],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 20.0,
              right: 20.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${activity.status}',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: secondColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildTitle() {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 12.0, left: 8, right: 16),
      child: Text(
        activity.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget buildPriceInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'ຮັບຈຳນວນ ${activity.amount} ຄົນ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.arrow_forward,
              color: mainColor,
            ),
          ),
        ],
      ),
    );
  }

}
