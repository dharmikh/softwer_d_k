import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../Provider/HomeProvider.dart';

class AppsPage extends StatefulWidget {
  const AppsPage({Key? key}) : super(key: key);

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  HomeProvider? ProviderTrue;
  HomeProvider? ProviderFalse;
  @override
  Widget build(BuildContext context) {
    ProviderTrue = Provider.of<HomeProvider>(context,listen: true);
    ProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 4.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 7.w),
                    child: Text(
                      "Watching Any Show In Apps",
                      style: TextStyle(
                          color: Color(0xFF85D200),
                          fontSize: 15.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 11.h,
                  //color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          ProviderFalse!.ChangeIndex2(index, ProviderTrue!.videoApp);
                          Navigator.pushNamed(context, 'Appshow');
                        },
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 7.6.h,
                                width: 7.6.h,
                                margin: EdgeInsets.only(left: 6.w,right: 1.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6,
                                          offset: Offset(0,0)
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("${ProviderTrue!.videoApp[index].image}"),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Padding(
                                padding: EdgeInsets.only(left: 6.w,right: 1.w),
                                child: Text(
                                  "${ProviderTrue!.videoApp[index].name}",
                                  style: TextStyle(
                                    color: Color(0xFF85D200),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 6.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 7.w),
                    child: Text(
                      "Social Media Apps",
                      style: TextStyle(
                          color: Color(0xFF85D200),
                          fontSize: 15.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 11.h,
                  //color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          ProviderFalse!.ChangeIndex2(index, ProviderTrue!.socialApp);
                          Navigator.pushNamed(context, 'Appshow');
                        },
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 7.6.h,
                                width: 7.6.h,
                                margin: EdgeInsets.only(left: 6.w,right: 1.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6,
                                          offset: Offset(0,0)
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("${ProviderTrue!.socialApp[index].image}"),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Padding(
                                padding: EdgeInsets.only(left: 6.w,right: 1.w),
                                child: Text(
                                  "${ProviderTrue!.socialApp[index].name}",
                                  style: TextStyle(
                                    color: Color(0xFF85D200),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 6.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 7.w),
                    child: Text(
                      "News Apps",
                      style: TextStyle(
                          color: Color(0xFF85D200),
                          fontSize: 15.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 11.6.h,
                  //color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          ProviderFalse!.ChangeIndex2(index, ProviderTrue!.newsApp);
                          Navigator.pushNamed(context, 'Appshow');
                        },
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 7.6.h,
                                width: 7.6.h,
                                margin: EdgeInsets.only(left: 6.w,right: 1.w,top: 0.6.h),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 4,
                                          offset: Offset(0,0)
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("${ProviderTrue!.newsApp[index].image}"),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w,right: 1.w),
                                child: Text(
                                  "${ProviderTrue!.newsApp[index].name}",
                                  style: TextStyle(
                                    color: Color(0xFF85D200),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 6.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 7.w),
                    child: Text(
                      "Shopping Apps",
                      style: TextStyle(
                          color: Color(0xFF85D200),
                          fontSize: 15.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 11.h,
                  //color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          ProviderFalse!.ChangeIndex2(index, ProviderTrue!.shoppingApp);
                          Navigator.pushNamed(context, 'Appshow');
                        },
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 7.6.h,
                                width: 7.6.h,
                                margin: EdgeInsets.only(left: 6.w,right: 1.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6,
                                          offset: Offset(0,0)
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("${ProviderTrue!.shoppingApp[index].image}"),
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Padding(
                                padding: EdgeInsets.only(left: 6.w,right: 1.w),
                                child: Text(
                                  "${ProviderTrue!.shoppingApp[index].name}",
                                  style: TextStyle(
                                    color: Color(0xFF85D200),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
