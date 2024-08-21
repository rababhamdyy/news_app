import 'package:flutter/material.dart';
import 'package:news_app/models/vertical_model.dart';

class VerticalCardWidget extends StatelessWidget {
  const VerticalCardWidget({super.key, required this.newsCard});

  final VerticalModel newsCard;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(newsCard.image),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          newsCard.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          newsCard.subTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ],
    );
  }
}