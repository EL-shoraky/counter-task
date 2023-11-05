import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("mostafa mohamed elshoraky"),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  i = 0;
                });
              },
              child: const Text("clear_counter"),
            ),
            body: Column(children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 212, 68, 68),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black, width: 8),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.purple,
                              offset: Offset(
                                3,
                                3,
                              ),
                              spreadRadius: 5,
                              blurRadius: 5),
                          BoxShadow(
                              color: Colors.purple,
                              offset: Offset(
                                -3,
                                -3,
                              ),
                              spreadRadius: 5,
                              blurRadius: 5)
                        ]),
                    width: 350,
                    height: 300,
                    padding: const EdgeInsets.only(
                        top: 50, left: 10, right: 10, bottom: 10),
                    margin: const EdgeInsets.only(
                        top: 200, left: 50, right: 50, bottom: 50),
                    alignment: Alignment.center,
                    child: Column(children: [
                      const Text(
                        "Counter_Task",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 82, 196, 97),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            backgroundColor: Color.fromARGB(124, 50, 175, 119)),
                      ),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                          ),
                        ],
                      ),
                      Text(
                        "counter = $i",
                        style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 39, 46, 118)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                i--;
                              });
                            },
                            icon: const Icon(Icons.remove),
                            iconSize: 80,
                          ),
                          IconButton(
                            padding: const EdgeInsets.only(top: 20),
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            },
                            icon: const Icon(Icons.add),
                            iconSize: 80,
                          )
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ])));
  }
}
