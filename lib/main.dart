import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/categoryScreern.dart';
import 'screens/CategeryMeal.dart';
import 'screens/mealDetailScreen.dart';
import 'screens/TabScreen.dart';
import 'screens/filterScreen.dart';
import 'screens/filterScreen.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
//        canvasColor: Color.fromARGB(255, 254, 229, 1),
//        fontFamily: 'Raleway',
//        textTheme: ThemeData.light().textTheme.copyWith(
//          body1: TextStyle(
//            color: Color.fromARGB(20, 51, 51, 1)
//          ),
//          body2: TextStyle(
//              color: Color.fromARGB(20, 51, 51, 1),
//          ),
//          title: TextStyle(fontFamily: 'RobotoCondensed',fontSize: 24.0) ,
//        ),
      ),
      home: TabsScreen(),
//      initialRoute: '/',
      routes: {
//        '/': (ctx) => TabsScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
//  AnimationController _controller;
//
//  @override
//  void initState() {
//    _controller = AnimationController(vsync: this);
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('DelsMeals'),
//
//      ),
//      body: Center(
//        child: Text('this is new'),
//      ),
//
//    );
//  }
//}
//
