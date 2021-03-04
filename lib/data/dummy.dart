class Category {
  String title;
  EntryItem items;

  Category(String s);
}

class EntryItem {
  Category category;
  String title;
  double rating;
  String description;
  String imageUrl;

  EntryItem(Category cat, String title, double rating, String description, String imageUrl);
}

List<EntryItem> entries = [
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
  EntryItem(
      category[0],
      "Mount something",
      3.5,
      "Unlock your full potential with our hiking tour. Explore the best hiking sights with us!!",
      "http"
          "s://picsum.photos/500"),
];

List<Category> category = [
  Category("Mountains"),
  Category("River"),
  Category("Forrest"),
  Category("Coast"),
];
