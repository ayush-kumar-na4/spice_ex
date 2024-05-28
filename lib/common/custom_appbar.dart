import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spice_ex/common/app_style.dart';
import 'package:spice_ex/common/reusable_text.dart';
import 'package:spice_ex/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      height: 115.h,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage(
                      "https://scontent.fccu3-1.fna.fbcdn.net/v/t31.18172-8/19400434_1420583248028774_2428790619482477385_o.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=6ngUeKw1ktcQ7kNvgGvq18i&_nc_ht=scontent.fccu3-1.fna&oh=00_AYBmVMeavnZnDPkJou7K5VMxALSguCjj--HtAJVXcSWxlw&oe=66795C17"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: 'Deliver To ',
                          style: appStyle(13, kSecondary, FontWeight.w600)),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          "Lorem dfasfjjanf  asdjkasf ksdsj afj ",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(
                            11,
                            kGrayLight,
                            FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(getTimeOfDay(), style: TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 5) {
      return 'ayush';
    } else if (hour >= 5 && hour < 15) {
      return '⛅';
    } else if (hour >= 15 && hour < 18) {
      return '🌇';
    } else {
      return '🌙';
    }

    // return '';
  }
}
