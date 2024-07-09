/// Author:      星星
/// CreateTime:  2024/7/5
/// Contact Me:  1395723441@qq.com

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sensors_plus/sensors_plus.dart';

class EatPage extends StatefulWidget {
  const EatPage({super.key});

  @override
  State<EatPage> createState() => _EatPageState();
}

class _EatPageState extends State<EatPage> {
  StreamSubscription<AccelerometerEvent>? _accelerometerSubscription;
  double x = 0, y = 0, z = 0;
  bool show = false;

  void startListening() {
    _accelerometerSubscription = accelerometerEventStream().listen(
      (AccelerometerEvent event) {
        setState(() {
          //大于十
          x = event.x;
          y = event.y;
          z = event.z;
          if (x > 10 || y > 10 || z > 10) {
            if (!show) {
              show = true;
              showDialog(
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title: Text("摇一摇"),

                        );
                      },
                      context: context,
                      barrierDismissible: true)
                  .whenComplete(() {
                show = false;
              });
            }
          }
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startListening();
  }

  @override
  void dispose() {
    _accelerometerSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accelerometer Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("不知道吃啥？"),
            Text("快来摇一摇"),

            Lottie.asset('assets/lottie/blast.json'),



          ],
        ),
      ),
    );
  }
}

