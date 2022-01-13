import 'package:flutter/material.dart';

Container searchAndLocation(context) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/location");
          },
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.2,
            color: Colors.white,
            // child:
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              // filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Search",
              fillColor: const Color(0xFFCCCCCD),
              filled: true,
            ),
          ),
        ),
      ],
    ),
  );
}
