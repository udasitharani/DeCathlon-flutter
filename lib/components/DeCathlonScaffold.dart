import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CartClipper.dart';

class DeCathlonScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset('assets/logo.png', height: kToolbarHeight),
        actions: [
          ClipPath(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.05 * MediaQuery.of(context).size.width),
              width: 0.2 * MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFBADC37),
              ),
              alignment: Alignment.centerRight,
              child: Icon(
                FontAwesomeIcons.shoppingCart,
              ),
            ),
            clipper: CartClipper(),
          ),
        ],
      ),
    );
  }
}