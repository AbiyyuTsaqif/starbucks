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
        "Rich mocha-flavored sauce meets up with chocolaty chips, milk and ice for a blender bash. Top it off with sweetened whipped cream and mocha drizzle for a real party in your mouth.",
  ),
  menuList(
    name: "Strawberry Frappuccino",
    image: "assets/image/2.png",
    price: "\$ 30.00",
    desc:
        "We make a sweet strawberry milkshake, combined with glacing ice and top it with sweetened whipped cream to cheer up to start your beautiful day",
  ),
  menuList(
    name: "Tea Frappuccino",
    image: "assets/image/3.png",
    price: "\$ 35.00",
    desc:
        "We blend sweetened premium matcha green tea, milk and ice and top it with sweetened whipped cream to give you a delicious boost of energy.",
  )
];
