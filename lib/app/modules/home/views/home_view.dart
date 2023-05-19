import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text('Support'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
         // width: Get.width,
          height: Get.height * 0.9,
          child: Stack(children: [
            Container(
             // width: Get.width, 
              height: Get.height * 0.4,
              decoration: BoxDecoration(
                gradient:
                    customGradient(Alignment.topLeft, Alignment.bottomRight),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: Get.height * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Hi,",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Please fill this form, our team will reach out to you soon",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  
                  )
                ],
              ),
            ),
            Positioned.fill(
              left: 20,
              right: 20,
              bottom: Get.height * 0.2,
              top: Get.height * 0.3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 0, bottom: 5, top: 11, right: 15),
                                  hintText: "Full Name"),
                            ),
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                gradient: customGradient(
                                    Alignment.topLeft, Alignment.bottomRight),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        height: 100,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 0, bottom: 5, top: 11, right: 15),
                                  hintText: "E - Mail"),
                            ),
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                gradient: customGradient(
                                    Alignment.topLeft, Alignment.bottomRight),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              gradient: customGradient(
                                  Alignment.topLeft, Alignment.bottomRight)),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: TextFormField(
                              maxLines: 5,
                                decoration: const InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Your Message"
                            )),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: Get.height * 0.1,
              left: Get.width * 0.3,
              right: Get.width * 0.3,
              child: SizedBox(
                height: Get.height * 0.07,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: customGradient(
                        Alignment.topCenter, Alignment.bottomCenter),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  LinearGradient customGradient(AlignmentGeometry alignmentGeometryBegin,
      AlignmentGeometry alignmentGeometryEnd) {
    return LinearGradient(
        colors: [
          Colors.teal[200] ?? Colors.teal,
          Colors.pink[100] ?? Colors.pinkAccent,
          Colors.yellow[200] ?? Colors.yellow
        ],
        begin: alignmentGeometryBegin,
        end: alignmentGeometryEnd,
        tileMode: TileMode.clamp);
  }
}
