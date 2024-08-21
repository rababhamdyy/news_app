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