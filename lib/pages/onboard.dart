import 'package:flutter/material.dart';
import 'package:tas_mobile/pages/signup.dart';
import 'package:tas_mobile/widget/content_model.dart';
import 'package:tas_mobile/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, right: 20.0, left: 20.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: 400,
                          width: MediaQuery.of(context).size.width / 1,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          contents[i].title,
                          style: AppWidget.semiBoldTextFeildStyle(),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(contents[i].description,
                            style: AppWidget.lightTextFeildStyle()),
                      ],
                    ),
                  );
                }),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              )),
          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              }
              _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF6096B4),
                  borderRadius: BorderRadius.circular(20)),
              height: 60.0,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1 ? "Start" : 'Next',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }
}
