import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:slide_to_act/slide_to_act.dart';
import 'colors.dart' as color;

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 20, top: 80, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          "Calls",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: color.AppColor.greyish),
                            child: const Center(
                              child: Icon(Icons.trending_up_outlined),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: color.AppColor.greyish),
                            child: const Center(
                              child: Icon(Icons.notifications_none_outlined),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    height: 600,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "You haven't made any calls yet",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            padding: const EdgeInsets.all(20),
                                            height: 600,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  "Countries",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: color
                                                          .AppColor.lightgray,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const TextField(
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                    decoration: InputDecoration(
                                                      prefixIcon: Icon(
                                                        Icons.search,
                                                        color: Colors.grey,
                                                        size: 20,
                                                      ),
                                                      hintText: 'Search',
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 15),
                                                      labelStyle: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey),
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                const Text("Pick a number",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    )),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      child: Image.asset(
                                                          'lib/images/canada.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text("Canada")
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: color
                                                        .AppColor.lightgray,
                                                  ),
                                                  child: Column(
                                                    children: [Row()],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
