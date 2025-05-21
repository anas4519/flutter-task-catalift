import 'package:catalist_task_app/pages/home/widgets/featured_for_you_section.dart';
import 'package:catalist_task_app/pages/home/widgets/most_popular_section.dart';
import 'package:catalist_task_app/pages/home/widgets/our_courses_section.dart';
import 'package:catalist_task_app/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leading: Container(
            padding: EdgeInsets.only(left: 32, top: 8),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF03045E),
            ),
          ),
          title: Container(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'Courses',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xFF03045E),
              ),
            ),
          ),
          centerTitle: false,
          actions: [
            Container(
              padding: EdgeInsets.only(top: 8, right: 32),
              child: SvgPicture.asset(
                'assets/icons/cart_icon.svg',
                height: 32,
                width: 32,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchSection(),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              FeaturedForYouSection(),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              MostPopularSection(),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              OurCoursesSection()
            ],
          ),
        ));
  }
}
