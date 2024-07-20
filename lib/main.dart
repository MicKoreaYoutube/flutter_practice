// Copyright 2019 the Dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 0,
            ),
            Container(
              child: Column(children: [
                const Text("You have clicked the button",
                    style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                Text("$count", style: const TextStyle(fontSize: 40)),
                const SizedBox(
                  height: 10,
                ),
                const Text("times.", style: TextStyle(fontSize: 20)),
              ]),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                ),
                IconButton(
                  iconSize: 40,
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                ),
              ],
            ))
          ],
        )),
      ),
    ));
  }
}
