class menuList {
  String name;
  String image;
  String price;
  String desc;

  menuList({
    required this.name,
    required this.image,
    required this.price,
    required this.desc,
  });
}

var menuList_List = [
  menuList(
    name: "Chocolate Frappuccino",
    image: "assets/image/1.png",
    price: "\$ 20.00",
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
  ),
  menuList(
    name: "Tea Frappuccino",
    image: "assets/image/2.png",
    price: "\$ 30.00",
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
  ),
  menuList(
    name: "Strawberry Frappuccino",
    image: "assets/image/3.png",
    price: "\$ 30.00",
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
  )
];
