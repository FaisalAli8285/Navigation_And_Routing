import 'package:flutter/material.dart';
import 'package:routes_flutter/screen_3.dart';
import 'package:routes_flutter/utils/routes_name.dart';

class SecondScreen extends StatelessWidget {
  // static const String id = "second_screen";
//  final String name;
  dynamic data;
   SecondScreen({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    // final argument = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(data["Model"]),
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
                Navigator.pushNamed(context, RoutesName.ThirdScreen,
                arguments: {
                  "Flutter":"Developer"
                });
                // Navigator.pushNamed(context, ThirdScreen.id,
                // arguments: {
                //   "name":"sajid",
                //   "age":"23"

                // }
                // );
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ThirdScreen(name: "faisal",),
                //     ));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(child: Text("Faisal")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
