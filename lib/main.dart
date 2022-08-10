import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
                child: Text('Lotteryyy Winning Number is 0',
                    textAlign: TextAlign.center,
                    style:x == 0 ? TextStyle(fontSize: 50, color: Colors.pink):
                    TextStyle(fontSize: 50,color: Color(0xffF8000000))
                )),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color:
                      x == 0 ? Colors.pink.withOpacity(1) : Color(0xffF8000000),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.white,
                            size: 50,
                          ),
                          Text(
                            'Congratulations!\n you have won the lottery,\nyour number is $x\n Hurrrrah',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 50,
                          ),
                          Text(
                              'Better luck next Time your number is $x\ntry again',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
