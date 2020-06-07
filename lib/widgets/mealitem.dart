import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/mealDetailScreen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.affordability,
    @required this.complexity,
    @required this.duration,
  });
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }
  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }





  void selecteItem(BuildContext context ) {
    Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: id);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap:  ()=>  selecteItem( context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(10),
        elevation: 4,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imageUrl,height: 250, width: double.infinity,fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20,
                    right: 10,

                    child: Container(
                      width: 250,
                      color: Colors.black45,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Text(title,style: TextStyle(fontSize: 22,color: Colors.white,)
                      ),
                    ),),
              ],
            ),
            Padding (
              padding: EdgeInsets.all(10),

                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                   Row( children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(width: 10,),
                    Text('$duration min'),

                  ],),
                  Row( children: <Widget>[
                    Icon(Icons.work),
                    SizedBox(width: 6 ,),
                    Text(complexityText),

                  ],),
                      Row( children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(width: 6 ,),
                        Text(affordabilityText),

                      ],),

  ] )),
          ],
        ),
      ),
    );
  }
}
