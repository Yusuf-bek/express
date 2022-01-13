import 'package:express/database/topdb.dart';
import 'package:flutter/material.dart';

Container adsContainerFunction(context) {
  return Container(
    width: double.infinity,
    color: Colors.transparent,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.width * 0.12,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(topDb[index]["image"]), fit: BoxFit.cover),
          ),
        );
      },
      itemCount: 4,
    ),
  );
}
