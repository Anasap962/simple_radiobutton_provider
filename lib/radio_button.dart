import 'package:flutter/material.dart';
import 'package:flutter_application_1/cooler.dart';
import 'package:flutter_application_1/radio_button_nd.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      body: Center(
        child: Consumer<Change>(builder: (context, pro, child) {
          return Column(
            children: [
              Text(
                'Gender',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
              ),
              RadioListTile(
                  title: Text('men'),
                  value: 'men',
                  groupValue: pro.gender,
                  onChanged: (value) {
                    pro.radio(value);
                  }),
              RadioListTile(
                  title: Text('female'),
                  value: 'female',
                  groupValue: pro.gender,
                  onChanged: (value) {
                    pro.radio(value);
                  }),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return home();
                    }));
                  },
                  child: Text('done'))
            ],
          );
        }),
      ),
    );
  }
}
