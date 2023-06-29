import 'package:flutter/material.dart';
import 'package:routes_flutter/second_screen.dart';
import 'package:routes_flutter/utils/routes_name.dart';

class HomeScreen extends StatelessWidget {
  // static const String id = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
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
                Navigator.pushNamed(context, RoutesName.SecondScreen,
                arguments: {
                  "Model":"Adnan",
                  "age":"23"
                }
                );
                
                //  Navigator.pushNamed(context, SecondScreen.id,
                // arguments: {
                //   "name":"faisal",
                //   "age":"12"
                // }
                // );
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => SecondScreen(
                //         name: "faisal",
                //       ),
                //     ));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(child: Text("Screen1")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
