import 'package:flutter/material.dart';
import 'package:flutter_hr_management_design/common/app_colors.dart';
import 'package:flutter_hr_management_design/common/app_responsive.dart';

class RecruitmentDataWidget extends StatefulWidget {
  @override
  _RecruitmentDataWidgetState createState() => _RecruitmentDataWidgetState();
}

class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recruitment Progress",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                  fontSize: 22,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  tableHeader("Full Name"),
                  if (!AppResponsive.isMobile(context))
                    tableHeader("Designation"),
                  tableHeader("Status"),
                  if (!AppResponsive.isMobile(context)) tableHeader(""),
                ],
              ),

              ///Table Data
              tableRow(
                context,
                name: "Sara Bareillis",
                color: Colors.blue,
                image: "assets/user1.jpg",
                designation: "Project Manager",
                status: "Practical Round",
              ),
              tableRow(
                context,
                name: "Ahmad Bahauddin",
                color: Colors.yellow,
                image: "assets/user2.jpg",
                designation: "Java Software Developer",
                status: "HR Round",
              ),
              tableRow(
                context,
                name: "Haziq Kamel",
                color: Colors.green,
                image: "assets/user3.jpg",
                designation: "Flutter Developer",
                status: "Final Round",
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Showing 3 out 3 results"),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

TableRow tableRow(context, {name, image, designation, status, color}) {
  return TableRow(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    children: [
      // Full name
      Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.asset(
                image,
                width: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(child: Text(name)),
          ],
        ),
      ),
      // Designation
      if (!AppResponsive.isMobile(context)) Text(designation),
      // Status
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            height: 10,
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(child: Text(status)),
        ],
      ),
      if (!AppResponsive.isMobile(context))
        Image.asset(
          "assets/more.png",
          color: Colors.grey,
          height: 30,
        ),
    ],
  );
}

Widget tableHeader(text) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColor.black,
      ),
    ),
  );
}
