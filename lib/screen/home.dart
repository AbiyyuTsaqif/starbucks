import 'package:flutter/material.dart';
import 'package:starbucks/model/menu.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageIcon(
              AssetImage("assets/icon/burger.png"),
              color: Colors.black,
              size: 20,
            ),
            Image.asset(
              "assets/icon/logo.png",
              width: 59,
              height: 59,
            ),
            ImageIcon(
              AssetImage("assets/icon/shop.png"),
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our way of loving \nyou back",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  searchBox(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    child: Center(
                      child: Text("All",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Color(0xff00623b),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    child: Center(
                      child: Text("Coffee",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Color(0xfff2f2f2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    child: Center(
                      child: Text("Tea",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Color(0xfff2f2f2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 14, right: 14),
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    child: Center(
                      child: Text("Drink",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Color(0xfff2f2f2),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xff00623b),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 380,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuList_List.length,
                itemBuilder: (context, index) {
                  if (index >= menuList_List.length) {
                    return null;
                  }
                  final menuList list = menuList_List[index];
                  bool isLastItem = index == menuList_List.length - 1;

                  return listMenu(
                    iniMenuList: list,
                    addRightMargin: isLastItem,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26.5),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: const TextField(
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class listMenu extends StatelessWidget {
  final menuList iniMenuList;
  final bool addRightMargin;
  const listMenu(
      {Key? key, required this.iniMenuList, this.addRightMargin = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: 23, right: addRightMargin ? 23 : 0, bottom: 10),
      height: 365,
      width: 256,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(
        //   color: Colors.grey,
        //   width: 1,
        // ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(
                4.0, 4.0), // Adjust the values to control the shadow position
            blurRadius: 4.0, // Adjust the value to control the blurriness
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              iniMenuList.image,
              height: 270,
              width: 256,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  iniMenuList.name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      iniMenuList.price,
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff00623b),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
