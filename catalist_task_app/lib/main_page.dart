import 'package:catalist_task_app/pages/courses_page.dart';
import 'package:catalist_task_app/pages/explore_mentors_page.dart';
import 'package:catalist_task_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [];
  int _currIndex = 0;

  @override
  void initState() {
    super.initState();
    pages = [const HomePage(), const ExploreMentorsPage(), const CoursesPage()];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: IndexedStack(
        index: _currIndex,
        children: pages,
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF03045E),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'CATA',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 40,
                      height: 2,
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 2),
                    ),
                    Text(
                      'LIFT',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.white,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble_text,
                color: Colors.white,
                size: 28,
              ))
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF03045E),
          boxShadow: [
            BoxShadow(
              color: theme.shadowColor.withOpacity(0.15),
              blurRadius: 15,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Icon(
                        Icons.home_outlined,
                        size: 32,
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
                      Icon(
                        CupertinoIcons.compass,
                        size: 32,
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
                      Icon(
                        CupertinoIcons.book,
                        size: 32,
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
