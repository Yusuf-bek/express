import 'package:flutter/material.dart';

class EntranceLoadingPage extends StatefulWidget {
  const EntranceLoadingPage({Key? key}) : super(key: key);

  @override
  State<EntranceLoadingPage> createState() => _EntranceLoadingPageState();
}

class _EntranceLoadingPageState extends State<EntranceLoadingPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Navigator.pushNamed(context, "/home"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2E001),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Positioned(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              child: const Image(
                image: AssetImage("assets/icons/mainlogo.png"),
              ),
            ),
            top: MediaQuery.of(context).size.width * 0.2,
          ),
          Positioned(
            child: const Text(
              "Safe Delivery",
              style: TextStyle(fontSize: 30),
            ),
            top: MediaQuery.of(context).size.height * 0.51,
            left: MediaQuery.of(context).size.width * 0.28,
          ),
        ],
      ),
    );
  }
}
