import 'package:flutter/material.dart';
import 'package:flutter_hr_management_design/common/app_colors.dart';

class NotificationCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16, color: AppColor.black),
                  children: [
                    TextSpan(text: "Good Morning "),
                    TextSpan(
                      text: "Haziq Kamel!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Today you have 9 New Applications. \nAlso you need to hire 2 new UX Designers, and \n1 React Native Developer",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  height: 1.5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Read More",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColor.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          if (MediaQuery.of(context).size.width >= 620) ...{
            Spacer(),
            Expanded(
              flex: 3,
              child: Image.asset(
                "assets/notification_image.png",
                height: 160,
              ),
            ),
          }
        ],
      ),
    );
  }
}
