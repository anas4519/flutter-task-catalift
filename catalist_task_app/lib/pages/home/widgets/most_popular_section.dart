import 'package:catalist_task_app/consts/consts.dart';
import 'package:catalist_task_app/models/course_model.dart';
import 'package:catalist_task_app/pages/home/widgets/course_details.dart';
import 'package:flutter/material.dart';

class MostPopularSection extends StatefulWidget {
  const MostPopularSection({super.key});

  @override
  State<MostPopularSection> createState() => _MostPopularSectionState();
}

class _MostPopularSectionState extends State<MostPopularSection> {
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
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Most Popular',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('See All', style: TextStyle(color: customGrey)),
          ],
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topics.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? customBlue
                              : Colors.white,
                          border: Border.all(color: customBlue),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        child: Text(
                          topics[index],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : customBlue),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  )
                ],
              );
            },
          ),
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
