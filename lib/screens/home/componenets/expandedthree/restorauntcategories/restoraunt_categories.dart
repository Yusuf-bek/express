import 'package:express/database/express_db.dart';
import 'package:flutter/material.dart';

Container restorauntCategoriesList(context){
   return Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.15,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Restoraunts",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.18,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return InkWell(
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.38,
                              height: MediaQuery.of(context).size.width * 0.08,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              margin: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  Text(
                                    restarauntCategoryData[index],
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ],
                              )),
                        );
                      } else {
                        return InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.38,
                            height: MediaQuery.of(context).size.width * 0.08,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                restarauntCategoryData[index],
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    itemCount: restarauntCategoryData.length,
                  ),
                ),
              ],
            ),
          );
}