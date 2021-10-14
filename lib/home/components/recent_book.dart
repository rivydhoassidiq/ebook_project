import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../theme.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColorRecentBook,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          const SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: semiBoldText14.copyWith(
                  color: blackColor2,
                ),
              ),
              CircularPercentIndicator(
                radius: 50,
                lineWidth: 7,
                animation: true,
                percent: 0.5,
                progressColor: greenColor,
                reverse: true,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                '50 % Completed',
                style: mediumText12.copyWith(
                  color: greyColorRecentBook,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
