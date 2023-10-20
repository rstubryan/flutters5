import 'package:flutter/material.dart';

void main() {
  runApp(Shopping());
}

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  int total = 0;

  void addData() {
    setState(() {
      total++;
    });
  }

  void minData() {
    setState(() {
      if (total > 0) {
        total--;
      } else {
        total = 0;
      }
    });
  }

  TextEditingController ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shopping"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(total.toString(),
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 50,
                    )),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: addData,
                        child: Text("+"),
                      ),
                      SizedBox(
                        width: 50,
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: ctrl,
                          onChanged: (value) {
                            setState(() {
                              total = int.parse(value);
                            });
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: minData,
                        child: Text("-"),
                      ),
                    ]),
              ]),
        ),
      ),
    );
  }
}
