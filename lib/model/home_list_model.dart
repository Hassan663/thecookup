class CatalogModel{
  static final items = [
    Item(
        id: 1,
        name: "mansoor",
        desc: "ammamama",
        image: "assets/images/calender.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.image});
}


