import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foot/screens/CategeryMeal.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem(this.id,this.title, this.color);
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      CategoryMealScreen.routeName,arguments: {
        'id': id,
      'title': title,
    },

  );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap:()=> selectCategory(context) ,
       splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      child: Container(
        padding:  EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:
            [color.withOpacity(0.7),
              color ,
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,

            )
        ,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
