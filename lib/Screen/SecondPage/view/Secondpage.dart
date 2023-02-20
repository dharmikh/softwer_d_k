import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../HomeScreen/Provider/HomeProvider.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  HomeProvider? ProviderTrue;
  HomeProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<HomeProvider>(context,listen: true);
    ProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: ProviderTrue!.Screens[ProviderTrue!.index],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            ProviderFalse!.ChangeIndex(index);
          },
          currentIndex: ProviderTrue!.index,
          unselectedItemColor: Color(0xFFCEE0AA),
          selectedItemColor: Color(0xFF85D200),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.app_registration,),label: "Apps"),
          ],
        ),
      ),
    );
  }
}
