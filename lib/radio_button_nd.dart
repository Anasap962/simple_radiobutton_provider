import 'package:flutter/material.dart';
import 'package:flutter_application_1/cooler.dart';
import 'package:provider/provider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,
      body: Center(
        child: Consumer<Change>(builder: (context, pro, child) {
          return Column(
            children: [
              Container(
                child: Text(pro.gender.toString()),
              )
            ],
          );
        }),
      ),
    );
  }
}
