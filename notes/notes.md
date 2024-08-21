- background image in BoxDecoration

```
decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/business.avif'),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
```

---
- remove blue color showing after scrolling
```
physics: const BouncingScrollPhysics(),
```

---
### CustomScrollView
### SliverToBoxAdapter
- enable scroll all page when we have vertical and horizontal scrolling
```
CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: HorizontalListView(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 35,
        ),
      ),
      VerticalListView()
    ],
  )
```

### SliverList
### SliverChildBuilderDelegate
```
SliverList(
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
```