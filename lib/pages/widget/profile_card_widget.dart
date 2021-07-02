import 'package:flutter/material.dart';
import 'package:flutter_hr_management_design/common/app_colors.dart';

class ProfileCardWidget extends StatefulWidget {
  @override
  _ProfileCardWidgetState createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/user4.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("HR Manager"),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profileListTile("Joined Date: ", "18-Apr-2021"),
          profileListTile("Projects: ", "32 Active"),
          profileListTile("Accomplishment: ", "125"),
        ],
      ),
    );
  }
}

Widget profileListTile(text, value) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
        ),
      ],
    ),
  );
}
