import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/material.dart';

class RequestOptions extends StatefulWidget {
  const RequestOptions({Key? key}) : super(key: key);

  @override
  _RequestOptionsState createState() => _RequestOptionsState();
}

class _RequestOptionsState extends State<RequestOptions> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.2,
        maxChildSize: 0.8,
        builder: (_, controller) {
          return Container(
              decoration: const BoxDecoration(
                  color: fRoomOptionListBgColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/clipboard.png"),
                            Text("Request Options"),
                            Text(
                              "Modify",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/charlespf.png"),
                                            fit: BoxFit.fill),
                                        color: fTextFieldColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Naz T",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child: Image.asset("assets/images/wif.png"),
                                  // child: Image.asset("assets/images/wifi.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child:
                                      Image.asset("assets/images/chatcon.png"),
                                  // child: Image.asset("assets/images/wifi.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child: Image.asset("assets/images/micro.png"),
                                  // child: Image.asset("assets/images/wifi.png"),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/charlespf.png"),
                                            fit: BoxFit.fill),
                                        color: fTextFieldColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Naz T",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child: Image.asset("assets/images/wif.png"),
                                  // child: Image.asset("assets/images/wifi.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child:
                                      Image.asset("assets/images/chatcon.png"),
                                  // child: Image.asset("assets/images/wifi.png"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      border:
                                          Border.all(color: Colors.blueAccent)),
                                  child: Image.asset(
                                      "assets/images/videoindicator.png"),
                                  // child: Image.asset("assets/images/wifi.png"),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ));
        });
  }
}
