import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
//import 'package:meditation_app/main6.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';
import 'package:meditation_app/screens/workout_recscreen.dart';
import 'package:meditation_app/screens/yoga_screen.dart';

import 'package:meditation_app/main3.dart';
import 'package:meditation_app/main4.dart';



class PhyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/pic2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Physical Wellness",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Healthy is an outfit that looks different on everybody.",
                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0, ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                     /* child: Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                      ),*/
                    ),
                    /*SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),*/
                    SizedBox(height: 70),
                    Wrap(
                      spacing: 100,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          seassionNum: "Diet Plan",
                          isDone: true,
                          press: () {},
                        ),
                        SeassionCard(
                          seassionNum: "Workout",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home1()),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: "Sleep Tracker",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SleepTracker()),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: "Yoga",
                          press: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home2()),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: "Routine tracker",
                          press: () {
                            
                          },
                        ),
                        SeassionCard(
                          seassionNum: "Gyms and Studios Nearby",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MedicineApp()),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    /*Text(
                      "Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text("Start your deepen you practice")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )*/
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final String seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth  -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      " $seassionNum",
                      style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

