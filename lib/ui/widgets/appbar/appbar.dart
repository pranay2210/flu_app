import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiara_app/ui/homepage/presentation/main_page.dart';

MainPage mainPage;

typedef void HomeCallback();
typedef void CartCallback();

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final HomeCallback onHomeClick;
  final CartCallback onCartClick;
  final double height;

  const Appbar(
      {Key key, @required this.height, this.onHomeClick, this.onCartClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey[300],
            child: PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: GestureDetector(
                  onTap: ()=>onHomeClick(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset(
                      'assets/logo/tiarabluelogo.png',
                      scale: 5,
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 93, 10),
                    child: Container(
                      width: 400,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                          )),
                      //color: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search),
                            hintText: "Search",
                            contentPadding: EdgeInsets.all(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/logo/menu-drawer.png',
                        scale: 10,
                      ),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      endDrawer: DrawerWidgetScaff(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
