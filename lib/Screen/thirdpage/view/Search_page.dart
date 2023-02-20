import 'package:flutter/material.dart';
import 'package:softwer_d_k/Screen/HomeScreen/Provider/HomeProvider.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  HomeProvider? providert;
  HomeProvider? providerf;

  @override
  void initState() {
    super.initState();
   // Provider.of<HomeProvider>(context, listen: false).LoadUrl("");
  }
  @override
  Widget build(BuildContext context) {
    providert = Provider.of<HomeProvider>(context, listen: true);
    providerf = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            height: 5.h,
            width: 160.w,
            child: Row(
              children: [
                 InkWell(onTap:(){
                   providerf!.inAppWebViewController!.goBack();
                 },child: Icon(Icons.arrow_back,color: Colors.black,)),
                SizedBox(width:3.w,),
                InkWell(onTap:(){
                  providerf!.inAppWebViewController!.goForward();
                },child: Icon(Icons.arrow_forward_rounded,color: Colors.black,)),
                Expanded(
                  child: TextField(
                    onSubmitted: (value) {
                      providerf!.LoadUrl("${providert!.txtSearch.text}");
                    },
                    controller: providert!.txtSearch,
                    decoration: InputDecoration(
                      hintText: "Search",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("https://www.google.com/")),
          onWebViewCreated: (controller) {
            providerf!.ChnageController(controller);
          },
          onProgressChanged: (controller, progress) {
            providerf!.ChnageProgress(progress/100);
          },

        ),
      ),
    );
  }
}
