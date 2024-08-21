import 'package:flutter/material.dart';
import 'package:news_app/views/horizontal_view.dart';
import 'package:news_app/views/vertical_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            HorizontalListView(),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: VerticalListView(),
            )
          ],
        ),
      ),
    );
  }
}
