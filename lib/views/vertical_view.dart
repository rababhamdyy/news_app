import 'package:flutter/material.dart';
import 'package:news_app/models/vertical_model.dart';
import 'package:news_app/widgets/vertical_card_widget.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newsCards.length,
        (context, cardIndex) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: VerticalCardWidget(newsCard: newsCards[cardIndex]),
          );
        },
      ),
    );
  }
}
