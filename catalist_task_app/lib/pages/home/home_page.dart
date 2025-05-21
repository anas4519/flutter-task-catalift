import 'package:catalist_task_app/models/course_model.dart';
import 'package:catalist_task_app/pages/home/widgets/course_details.dart';
import 'package:catalist_task_app/pages/home/widgets/featured_for_you_section.dart';
import 'package:catalist_task_app/pages/home/widgets/most_popular_section.dart';
import 'package:catalist_task_app/pages/home/widgets/our_courses_section.dart';
import 'package:catalist_task_app/pages/home/widgets/search_bar.dart';
import 'package:catalist_task_app/providers/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final searchQuery = context.watch<SearchProvider>().searchQuery;

    Widget buildBody() {
      if (searchQuery.isEmpty) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchSection(),
            SizedBox(height: screenHeight * 0.04),
            FeaturedForYouSection(),
            SizedBox(height: screenHeight * 0.04),
            MostPopularSection(),
            SizedBox(height: screenHeight * 0.04),
            OurCoursesSection()
          ],
        );
      } else {
        final filteredCourses = getAllCourses()
            .where((course) =>
                course.title.toLowerCase().contains(searchQuery.toLowerCase()))
            .toList();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchSection(),
            SizedBox(height: screenHeight * 0.04),
            if (filteredCourses.isEmpty)
              Center(
                child: Text(
                  'No courses found matching "$searchQuery"',
                  style: TextStyle(
                    color: Color(0xFF03045E),
                    fontSize: 16,
                  ),
                ),
              )
            else
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: filteredCourses
                    .map((course) => CourseDetails(course: course))
                    .toList(),
              ),
          ],
        );
      }
    }

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
          child: buildBody(),
        ));
  }

  List<Course> getAllCourses() {
    return [
      Course(
          lessons: 15,
          title: 'Artificial Intelligence and ML',
          imagePath: 'assets/course_images/aiml.png',
          price: '1,500'),
      Course(
          lessons: 15,
          title: 'User Interface and User Experience',
          imagePath: 'assets/course_images/uiux.png',
          price: '1,500'),
      Course(
          lessons: 15,
          title: 'Computer Engineering',
          imagePath: 'assets/course_images/ce.png',
          price: '1,500')
    ];
  }
}
