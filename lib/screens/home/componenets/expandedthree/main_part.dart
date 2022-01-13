import 'package:express/database/express_db.dart';
import 'package:express/screens/home/componenets/expandedthree/restorauntcategories/restoraunt_categories.dart';
import 'package:express/screens/home/componenets/expandedthree/shops/shops.dart';
import 'package:flutter/material.dart';

SizedBox thirdExpanded(context) {
  return SizedBox(
    child: ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          
          return shopsFunction(context);
        } else if (index == 1) {
          return restorauntCategoriesList(context);
        } else {
          return Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          homePage[index - 2]["image"],
                        ),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                ),
                Positioned(
                  child: Text(
                    homePage[index - 2]["name"],
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  bottom: MediaQuery.of(context).size.width * 0.2,
                  left: MediaQuery.of(context).size.width * 0.04,
                ),
                Positioned(
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                  bottom: MediaQuery.of(context).size.width * 0.18,
                  right: MediaQuery.of(context).size.width * 0.03,
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          homePage[index - 2]["logo"],
                        ),
                      ),
                    ),
                  ),
                  bottom: MediaQuery.of(context).size.width * 0.36,
                  left: MediaQuery.of(context).size.width * 0.03,
                ),
              ],
            ),
          );
        }
      },
      itemCount: homePage.length + 2,
    ),
  );
}
