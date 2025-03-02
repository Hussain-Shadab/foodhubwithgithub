

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key});

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int _selectedStar = 0;

  final List<String>_ratingTexts=[
    'Terrible',
    'Poor',
    'Average',
    'Good',
    'Excellent'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Corresponding text
          Text(
            _selectedStar > 0
                ? _ratingTexts[_selectedStar - 1]
                : "Select a rating",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.red),
          ),
          const SizedBox(height: 15),

          // Rating stars
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedStar = index + 1;
                  });
                },
                child: Icon(
                  Icons.star,
                  color: index < _selectedStar ? AppColors.ratingStarColor : Colors.grey,
                  size: 40,
                ),
              );
            }),
          ),

        ],
      ),
    );
  }
}
