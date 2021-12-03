import 'package:cookup/constants/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

class OpenCalendar extends StatefulWidget {
  const OpenCalendar({Key? key}) : super(key: key);

  @override
  _OpenCalendarState createState() => _OpenCalendarState();
}

class _OpenCalendarState extends State<OpenCalendar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/codebg.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const MyProfile()));
                          },
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Colors.white))),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset("assets/images/notifications.png")),
                  IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset("assets/images/invite.png")),
                  IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset("assets/images/calender.png")),
                ]),
                Text(
                  "Current & Future\nScheduled Event",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TabBar(
                      controller: _tabController,
                      // labelPadding:
                      //     const EdgeInsets.only(left: 14.4, right: 14.4),
                      automaticIndicatorColorAdjustment: false,
                      // labelColor: Colors.black,
                      indicatorColor: Colors.transparent,

                      tabs: [
                        const Tab(
                          child: Text(
                            "Weekly",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Tab(
                          child: Text(
                            "Monthly",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          Card(
                            margin: EdgeInsets.only(left: 40, right: 40),
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TableCalendar(
                              focusedDay: selectedDay,

                              //Day Changed
                              onDaySelected:
                                  (DateTime selectDay, DateTime focusDay) {
                                setState(() {
                                  selectedDay = selectDay;
                                  focusedDay = focusDay;
                                });
                              },
                              selectedDayPredicate: (DateTime date) {
                                return isSameDay(selectedDay, date);
                              },
                              calendarStyle: CalendarStyle(
                                  defaultTextStyle:
                                      TextStyle(color: Color(0xff7A7585)),
                                  selectedDecoration: BoxDecoration(
                                      color: fCalendarCircleColor,
                                      shape: BoxShape.circle),
                                  todayDecoration: BoxDecoration(
                                      color: fCalendarCircleColor,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.green,
                                      ),
                                      shape: BoxShape.circle)),
                              firstDay: DateTime(1990),
                              lastDay: DateTime(2050),
                              rowHeight: 35,
                              calendarFormat: format,
                              headerStyle: HeaderStyle(
                                  leftChevronMargin:
                                      EdgeInsets.only(left: 25.0),
                                  rightChevronMargin:
                                      EdgeInsets.only(right: 25.0),
                                  leftChevronIcon: Icon(
                                    Icons.chevron_left,
                                    color: fChevronColor,
                                  ),
                                  rightChevronIcon: Icon(
                                    Icons.chevron_right,
                                    color: fChevronColor,
                                  ),
                                  formatButtonVisible: false,
                                  titleTextStyle: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  titleCentered: true),
                              onFormatChanged: (CalendarFormat _format) {
                                setState(() {
                                  format = _format;
                                });
                              },
                            ),
                          ),
                          const Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "This week scheduled Constituent",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Daily",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "2",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Weekly",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "4",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Monthly",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "9",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 3,
                    ),
                    Text(
                      "Current week\nSchedule",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Sun",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: fTextFieldColor,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "M",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Color(0xffFF0000),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "T",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Color(0xff5C5C71),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "W",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Color(0xff177832),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "TH",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Color(0xffFFE600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "F",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Color(0xff0047FF),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Sat",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Color(0xffFF4D00),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "09/12 Today",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "10:25 AM",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 14,
                            height: 14,
                            color: Color(0xff0047FF),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.missed_video_call)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
