import 'package:ebook_project/models/book.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key,
    required this.info,
  }) : super(key: key);

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180,
          height: 180,
          margin: const EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(info.imageUrl),
              alignment: Alignment.topLeft,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          info.writers,
          style: mediumText12.copyWith(color: greyColor),
        ),
        Text(
          info.title,
          style: semiBoldText14.copyWith(color: blackColor),
        ),
      ],
    );
  }
}
