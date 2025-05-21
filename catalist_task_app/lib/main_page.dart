import 'package:catalist_task_app/pages/courses_page.dart';
import 'package:catalist_task_app/pages/explore_mentors_page.dart';
import 'package:catalist_task_app/pages/home/home_page.dart';
import 'package:catalist_task_app/widgets/catalift_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [];
  int _currIndex = 0;
  final List<Widget> _actions = [
    GestureDetector(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/icons/profile.svg',
      ),
    ),
    SizedBox(
      width: 16,
    ),
    GestureDetector(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/icons/bell.svg',
      ),
    ),
    SizedBox(
      width: 16,
    ),
    GestureDetector(
      onTap: () {},
      child: SvgPicture.asset(
        'assets/icons/chat.svg',
      ),
    ),
    SizedBox(
      width: 16,
    ),
  ];

  @override
  void initState() {
    super.initState();
    pages = [const HomePage(), const ExploreMentorsPage(), const CoursesPage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currIndex,
        children: pages,
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF03045E),
        title: CataliftLogo(),
        centerTitle: false,
        actions: _actions,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF03045E),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Home.svg',
                        width: 32,
                        color: _currIndex == 0 ? Colors.white : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: _currIndex == 0 ? Colors.white : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/explore.svg',
                        width: 32,
                        color: _currIndex == 1 ? Colors.white : Colors.grey,
                      ),
                      Text(
                        'Explore Mentors',
                        style: TextStyle(
                          color: _currIndex == 1 ? Colors.white : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/courses.svg',
                        width: 32,
                        color: _currIndex == 2 ? Colors.white : Colors.grey,
                      ),
                      Text(
                        'Courses',
                        style: TextStyle(
                          color: _currIndex == 2 ? Colors.white : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
