import 'package:flutter/material.dart';
import 'package:max_app/compunent/plan_text.dart';
import 'package:max_app/compunent/plan_text_description.dart';

class Creataccount extends StatelessWidget {
  const Creataccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff131b4f),
      ),
      body: SafeArea(
          bottom: false,
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
                  child: Column(
                    children: [
                      Plantext(),
                      SizedBox(
                        height: 10,
                      ),
                      PlanTextDescription(
                        title:
                            "You'll use this to watch on your favorite devices\n * lndicates a required field",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Textfieldtext(
                        title: "Email Address *",
                        padding: 250,
                      ),
                      Textfieldmax(
                        title: "Email Address",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textfieldtext(
                        title: "Confirm Email Address *",
                        padding: 160,
                      ),
                      Textfieldmax(title: "title"),
                      SizedBox(
                        height: 10,
                      ),
                      Textfieldtext(title: "Password", padding: 300),
                      Textfieldmax(title: "title"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 60,
                        ),
                        child: Text(
                          "At least 10 characters with no more than 4 repeating\n characters in a row",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w100),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textfieldtext(title: "First Name *", padding: 270),
                      Textfieldmax(title: "title"),
                      SizedBox(
                        height: 10,
                      ),
                      Textfieldtext(title: "First Name *", padding: 270),
                      Textfieldmax(title: "title"),
                      
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class Textfieldtext extends StatelessWidget {
  const Textfieldtext({
    super.key,
    required this.title,
    required this.padding,
  });
  final String title;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Textfieldmax extends StatelessWidget {
  const Textfieldmax({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0.1, color: Colors.white)),
          // hintText: title,
          suffixIcon: Icon(
            Icons.one_x_mobiledata,
            color: Colors.white,
          ),
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
