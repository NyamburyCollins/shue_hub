import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List <BottomNavigationBarItem> menus = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
    const BottomNavigationBarItem(icon: Icon(Icons.category), label: "categories"),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard'),),
      body:
          Column(
            children: [
              Container(
                height: size.height,
                child:
                Image.asset('assets/nyamburyImage.png',height: size.height, width:size.width ,fit: BoxFit.cover),


              ),
              Row(
                  children: [

                  ],
              )
            ],
          ),
        bottomNavigationBar: BottomNavigationBar(
          items: menus,

      ),
    );
  }
}
