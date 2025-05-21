import 'package:catalist_task_app/consts/consts.dart';
import 'package:catalist_task_app/models/course_model.dart';
import 'package:catalist_task_app/pages/home/widgets/course_details.dart';
import 'package:flutter/material.dart';

class OurCoursesSection extends StatelessWidget {
  const OurCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> coursesList = [
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
          price: '1,500'),
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
          price: '1,500'),
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Our Courses',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('See All', style: TextStyle(color: customGrey)),
          ],
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coursesList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CourseDetails(course: coursesList[index]),
                  SizedBox(
                    width: 4,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
