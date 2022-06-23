
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class productspage extends StatefulWidget {
  const productspage({Key? key}) : super(key: key);

  @override
  State<productspage> createState() => _productspageState();
}

class _productspageState extends State<productspage> {
  int indexx = 0 ;
  final screens = [
    1,
    2,
    3,
    4,
  ];
  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home,size: 30,),
      Icon(Icons.leaderboard_rounded,size: 30,),
      Icon(Icons.forum_outlined,size: 30,),
      Icon(Icons.account_circle,size: 30,),

    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PRODUCTS'
      ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(

          color: Colors.redAccent,
          backgroundColor: Colors.transparent,
          height: 60,
          index: indexx,
          items: items,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (indexx) =>setState(() => this.indexx = indexx),
        ),
      ),
    );
  }
}
