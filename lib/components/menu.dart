// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce5/components/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuCompuments extends StatelessWidget {
  const MenuCompuments({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: menu.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Image.asset(
                  '${menu[index]['img']}',
                  fit: BoxFit.cover,
                ),
                Text(''),
              ],
            );
          }),
    );
  }
}
