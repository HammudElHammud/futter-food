import 'package:flutter/material.dart';
import 'package:foot/screens/categoryScreern.dart';
import '../screens/filterScreen.dart';
import '../screens/categoryScreern.dart';
import '../screens/CategeryMeal.dart';
import '../main.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon,Function dataLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
      dataLink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
              (){
              Navigator.of(context).pushNamed(CategoryMealScreen.routeName );
              },
          ),
          buildListTile(
            'Filters',
            Icons.settings,
              (){
              Navigator.of(context).pushNamed(FiltersScreen.routeName);
              },
          ),

        ],
      ),
    );
  }
}
