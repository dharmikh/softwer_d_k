import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:softwer_d_k/Screen/thirdpage/view/Search_page.dart';
import 'Screen/HomeScreen/Model/HomeModel.dart';
import 'Screen/HomeScreen/Provider/HomeProvider.dart';
import 'Screen/SecondPage/view/Secondpage.dart';
import 'Screen/thirdpage/view/threepage.dart';

void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider())
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/' : (context) => BottomPage(),
                'Appshow' : (context) => AppShowPage(),
                'Search'  : (context)=> SearchPage(),
              },
            );
          },
        ),
      )
  );
}