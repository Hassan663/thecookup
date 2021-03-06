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
                const Text(
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

                      tabs: const [
                        Tab(
                          child: Text(
                            "Weekly",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Tab(
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
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          Card(
                            margin: const EdgeInsets.only(left: 40, right: 40),
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
                                      const TextStyle(color: Color(0xff7A7585)),
                                  selectedDecoration: const BoxDecoration(
                                      color: fCalendarCircleColor,
                                      shape: BoxShape.circle),
                                  todayDecoration: BoxDecoration(
                                      color: fCalendarCircleColor,
                                      border: Border.all(
                                          width: 2, color: Colors.green),
                                      shape: BoxShape.circle)),
                              firstDay: DateTime(1990),
                              lastDay: DateTime(2050),
                              rowHeight: 35,
                              calendarFormat: format,
                              headerStyle: const HeaderStyle(
                                  leftChevronMargin:
                                      EdgeInsets.only(left: 25.0),
                                  rightChevronMargin:
                                      EdgeInsets.only(right: 25.0),
                                  leftChevronIcon: Icon(Icons.chevron_left,
                                      color: fChevronColor),
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
                              // calendarBuilders: CalendarBuilders(
                              //   dowBuilder: (context, day) {
                              //     return Center(
                              //         child: Container(
                              //             color: day.weekday == DateTime.sunday
                              //                 ? Colors.red[300]
                              //                 : Colors.orange[300],
                              //            ));
                              //   },
                              // ),
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "This week scheduled Constituent",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
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
                          children: const [
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
                          children: const [
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 3,
                    ),
                    const Text(
                      "Current week\nSchedule",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text(
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
                            const Text(
                              "M",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: const Color(0xffFF0000),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "T",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: const Color(0xff5C5C71),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "W",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: const Color(0xff177832),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "TH",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: const Color(0xffFFE600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "F",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: const Color(0xff0047FF),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Sat",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: const Color(0xffFF4D00),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
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
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            "10:25 AM",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 14,
                            height: 14,
                            color: const Color(0xff0047FF),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.missed_video_call)
                        ],
                      ),
                    ),
                    const SizedBox(
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
