import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tech_tutor/Student/components/step1.dart';
import 'package:tech_tutor/Student/components/step2.dart';
import 'package:tech_tutor/colors.dart';

class StudentSignupView extends StatefulWidget {
  const StudentSignupView({Key? key}) : super(key: key);

  @override
  State<StudentSignupView> createState() => _StudentSignupViewState();
}

class _StudentSignupViewState extends State<StudentSignupView> {
  final PageController _pageController = PageController();

  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  nextPage() {
    if (_currentPage < 2) {
      _pageController.animateToPage(
        _currentPage++,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              AnimatedSmoothIndicator(
                activeIndex: _currentPage,
                count: 2,
                effect: WormEffect(
                    activeDotColor: blueColor, dotColor: lightGreyColor),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset('assets/images/details.svg',
                  height: MediaQuery.of(context).size.height * 0.3),
              const SizedBox(height: 10),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    ...([
                      const Step1(),
                      const Step2(),
                    ].map(
                      (step) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: step,
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: nextPage,
                          child: Text(_currentPage < 1 ? 'Next' : "Lets go!")),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
