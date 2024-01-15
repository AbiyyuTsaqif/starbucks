import 'package:flutter/material.dart';
import 'package:starbucks/model/menu.dart';
import 'package:starbucks/screen/transaction.dart';

class detailedMenu extends StatefulWidget {
  final menuList iniMenuList;
  const detailedMenu({
    Key? key,
    required this.iniMenuList,
  }) : super(key: key);

  @override
  State<detailedMenu> createState() => _detailedMenuState();
}

class _detailedMenuState extends State<detailedMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
                size: 24,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Image.asset(
              "assets/icon/logo.png",
              width: 59,
              height: 59,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 24,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 23, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.iniMenuList.image,
                height: 400,
                width: 380,
                fit: BoxFit.cover,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 56,
                  child: Text(
                    widget.iniMenuList.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 2,
                  ),
                ),
                Text(
                  widget.iniMenuList.price,
                  style: TextStyle(
                    color: Color(0xff00623b),
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              widget.iniMenuList.desc,
              style: TextStyle(
                color: Color(0xff6D6D6D),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff6D6D6D),
                fontWeight: FontWeight.w400,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return transaction();
                }));
              },
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff00623b),
                ),
                child: Center(
                  child: Text(
                    "Add to bag",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
