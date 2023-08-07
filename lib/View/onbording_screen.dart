import 'package:flutter/material.dart';
import 'package:max_app/View/screen.dart';
import 'package:max_app/compunent/mounthley_salary.dart';
import 'package:max_app/compunent/pay1_card.dart';
import 'package:max_app/compunent/pay2_card.dart';
import 'package:max_app/compunent/pay3_card.dart';
import 'package:max_app/compunent/plan_text.dart';
import 'package:max_app/compunent/plan_text_description.dart';
import 'package:max_app/compunent/save_up.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff131b4f),
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
                    decoration: const BoxDecoration(
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
                          const Plantext(),
                          const SizedBox(
                            height: 10,
                          ),
                          PlanTextDescription(
                            title:
                                'Stream hit movies, fresh originals, and\n family favorites',
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 155),
                            child: Saveup(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
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
                          const SizedBox(
                            height: 20,
                          ),
                          const PayCard1(
                            title: "With Ads",
                            salarytitle: "\$99.99",
                            pointinfo1: "Stream on 2 deviices at once",
                            pointinfo2: "Full HD video resolution",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const PayCard2(
                            title: "Ad-free",
                            salarytitle: "\$149.99",
                            pointinfo1: "Stream on 2 deviices at once",
                            pointinfo2: "Full HD video resolution",
                            pointinfo3: "30 downlads to watch on the go",
                          ),
                          const PayCard3(
                            title: "Ultimate Ad-Free",
                            salarytitle: "\$19.99",
                            pointinfo1: "Stream on 4 deviices at once",
                            pointinfo2: "Best video quality with 4k Ultra HD",
                            pointinfo3: "immersive audio with Dolby Atmos",
                            pointinfo4: "100 dawnloads to watch on the go",
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Full HD, 4K Ultra HD, Dolby Atmos not available on \n all content within each plan.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Ultimate AD-Free dawnloads may include \nrestrictions in some content categories. Learn\n more at help.max.com",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Scren1()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                //fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
                                minimumSize: const Size(360, 50),
                                shadowColor: Colors.black,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              "Continue",
                              style: TextStyle(color: Colors.black),
                            ),
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
