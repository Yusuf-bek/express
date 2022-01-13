import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage("assets/images/location.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.05,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    top: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(22),
              color: Colors.white,
              child: Stack(
                children: [
                  const Text(
                    "Address delivery",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Positioned(
                    child: const Text(
                      "Current Address",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    top: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Positioned(
                    child: const Text(
                      "Chilonzar district, Chilanzar 9 quarter 13/1 str",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    top: MediaQuery.of(context).size.width * 0.22,
                  ),
                  Positioned(
                    child: const Divider(
                      color: Colors.black,
                    ),
                    top: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
