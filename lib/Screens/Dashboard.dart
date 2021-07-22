import 'package:flutter/material.dart';

import 'Search.dart';

class CustomRoute extends MaterialPageRoute {
  CustomRoute({WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => Duration(milliseconds: 800);
}

class Dashboard extends StatefulWidget {
  static String id = 'Dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context, CustomRoute(builder: (_) => Search()), (r) => false);
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.1,
                  color: Colors.grey,
                  blurRadius: 10,
                )
              ],
            ),
            child: Container(
              width: 130,
              child: Hero(
                tag: 'icon',
                child: Image.asset('Assets/Images/icon.png'),
              ),
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
