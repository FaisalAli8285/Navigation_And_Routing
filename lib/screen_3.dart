import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  dynamic details;
  // static const String id = "screen_3";
  // final String name;
   ThirdScreen({
    super.key,required this.details
  });

  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("sajid"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(child: Text(details["Flutter"])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
