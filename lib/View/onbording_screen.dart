import 'package:flutter/material.dart';
import 'package:max_app/View/screen.dart';
import 'package:max_app/compunent/background_color.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff131b4f),
        ),
        // backgroundColor: Colors.blue,
        body: SafeArea(
            bottom: false,
            top: false,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    height: 930,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff131b4f),
                          Color(0xff121021),
                        ],
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Plantext(),
                          SizedBox(
                            height: 10,
                          ),
                          PlanTextDescription(),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 155),
                            child: Saveup(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Monthly",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Mounthleysalary(),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          PayCard1(
                            title: "With Ads",
                            salarytitle: "\$99.99",
                            pointinfo1: "Stream on 2 deviices at once",
                            pointinfo2: "Full HD video resolution",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          PayCard2(
                            title: "Ad-free",
                            salarytitle: "\$149.99",
                            pointinfo1: "Stream on 2 deviices at once",
                            pointinfo2: "Full HD video resolution",
                            pointinfo3: "30 downlads to watch on the go",
                          ),
                          PayCard3(
                            title: "Ultimate Ad-Free",
                            salarytitle: "\$19.99",
                            pointinfo1: "Stream on 4 deviices at once",
                            pointinfo2: "Best video quality with 4k Ultra HD",
                            pointinfo3: "immersive audio with Dolby Atmos",
                            pointinfo4: "100 dawnloads to watch on the go",
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Full HD, 4K Ultra HD, Dolby Atmos not available on \n all content within each plan.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ultimate AD-Free dawnloads may include \nrestrictions in some content categories. Learn\n more at help.max.com",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => scren1()),
                              );
                            },
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                //fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
                                minimumSize: Size(360, 50),
                                shadowColor: Colors.black,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}

class PayCard1 extends StatelessWidget {
  const PayCard1({
    super.key,
    required this.title,
    required this.salarytitle,
    required this.pointinfo1,
    required this.pointinfo2,
  });
  final String title;
  final String salarytitle;
  final String pointinfo1;
  final String pointinfo2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff131b4f),
            Color(0xff121021),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  salarytitle,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "/year",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pointinfo extends StatelessWidget {
  const Pointinfo({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.circle,
          color: Colors.white,
          size: 12,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}

class Mounthleysalary extends StatelessWidget {
  const Mounthleysalary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Yearly",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class Saveup extends StatelessWidget {
  const Saveup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xff3651ea),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          "Save up to 20%",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PlanTextDescription extends StatelessWidget {
  const PlanTextDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Stream hit movies, fresh originals, and\n family favorites',
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
    );
  }
}

class Plantext extends StatelessWidget {
  const Plantext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        'Choose Your Plan',
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class PayCard2 extends StatelessWidget {
  const PayCard2({
    super.key,
    required this.title,
    required this.salarytitle,
    required this.pointinfo1,
    required this.pointinfo2,
    required this.pointinfo3,
  });
  final String title;
  final String salarytitle;
  final String pointinfo1;
  final String pointinfo2;
  final String pointinfo3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff131b4f),
            Color(0xff121021),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  salarytitle,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "/year",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PayCard3 extends StatelessWidget {
  const PayCard3({
    super.key,
    required this.title,
    required this.salarytitle,
    required this.pointinfo1,
    required this.pointinfo2,
    required this.pointinfo3,
    required this.pointinfo4,
  });
  final String title;
  final String salarytitle;
  final String pointinfo1;
  final String pointinfo2;
  final String pointinfo3;
  final String pointinfo4;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff131b4f),
            Color(0xff121021),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  salarytitle,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "/year",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo1,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo2,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo3,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
