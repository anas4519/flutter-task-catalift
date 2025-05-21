import 'package:catalist_task_app/consts/consts.dart';
import 'package:catalist_task_app/models/course_model.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  final Course course;
  const CourseDetails({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(course.imagePath),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Course bookmarked!'),
                        duration: Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFECFAF4),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Color(0xFF759083),
                        size: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Icon(
                Icons.school_outlined,
                color: customGreen,
                size: 18,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '${course.lessons} Lessons',
                style: TextStyle(color: customGreen, fontSize: 10),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            course.title,
            style: TextStyle(
                color: customBlue, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '₹ ${course.price}',
            style: TextStyle(color: priceColor),
          )
        ],
      ),
    );
  }
}
