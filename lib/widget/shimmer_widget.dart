import 'dart:math';

import 'package:flutter/material.dart';

Widget _loadedView() {
  return ListView.builder(
      itemCount: 8,
      itemBuilder: ((context, index) {
        var indx = Random().nextInt(6);
        return Container(
          //color: colors[indx +1],
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )
            ],
          ),
        );
      }));
}
