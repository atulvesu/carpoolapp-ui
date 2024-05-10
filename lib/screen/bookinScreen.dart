import 'package:carpoolapp/funscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Data { today, tomorrow, otherDate }

enum Number { one, two, three, four }

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  Data selectedData = Data.today;
  Number selectedNumber = Number.one;
  int ab = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Where are',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "you going?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "From",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Brussels",
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "To",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: ab,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TextFormField(
                        decoration: const InputDecoration(
                            hintText: "London",
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1))),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ab++;
                            });
                          },
                          child: Text("Add")),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (ab > 1) ab--;
                            });
                          },
                          child: Text("Reduce"))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Date",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedData = Data.today;
                          });
                        },
                        child: Text(
                          "Today",
                          style: TextStyle(
                              color: selectedData == Data.today
                                  ? Colors.blue
                                  : Colors.black),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedData = Data.tomorrow;
                          });
                        },
                        child: Text(
                          "Tomorrow",
                          style: TextStyle(
                              color: selectedData == Data.tomorrow
                                  ? Colors.blue
                                  : Colors.black),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedData = Data.otherDate;
                          });
                        },
                        child: Text(
                          "Other Date",
                          style: TextStyle(
                              color: selectedData == Data.otherDate
                                  ? Colors.blue
                                  : Colors.black),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(Icons.date_range)
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Passengers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedNumber = Number.one;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: selectedNumber == Number.one
                                  ? Colors.blue[200]
                                  : Colors.white,
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(100)),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Center(
                            child: Text("1",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedNumber = Number.two;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: selectedNumber == Number.two
                                  ? Colors.blue[200]
                                  : Colors.white,
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(100)),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Center(
                            child: Text("2",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedNumber = Number.three;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: selectedNumber == Number.three
                                  ? Colors.blue[200]
                                  : Colors.white,
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(100)),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Center(
                            child: Text("3",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedNumber = Number.four;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: selectedNumber == Number.four
                                  ? Colors.blue[200]
                                  : Colors.white,
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(100)),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Center(
                            child: Text("4",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FunScreen(),
                          ));
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
