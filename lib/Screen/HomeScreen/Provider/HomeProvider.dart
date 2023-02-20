import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:softwer_d_k/Screen/thirdpage/view/Search_page.dart';
import '../Model/HomeModel.dart';
import '../view/Homepage.dart';

class HomeProvider extends ChangeNotifier
{
  List Screens =
  [
    SearchPage(),
    AppsPage(),
  ];
  int index=0;
  int index2=0;
  double progress=0.0;
  double progress2=0.0;
  InAppWebViewController? inAppWebViewController;
  TextEditingController txtSearch = TextEditingController();
  List<BottomModel> videoApp = [
    BottomModel(name: "YouTube",image: "assets/image/youtube.png",url: "https://www.youtube.com/"),
    BottomModel(name: "HotStar",image: "assets/image/hotstar.jpg",url: "https://www.hotstar.com/in"),
    BottomModel(name: "Netflix",image: "assets/image/netflix.png",url: "https://www.netflix.com/in/"),
    BottomModel(name: "Sony LIV",image: "assets/image/sonyliv.png",url: "https://www.sonyliv.com/"),
  ];
  List<BottomModel> socialApp = [
    BottomModel(name: "WhatsApp",image: "assets/image/whatsapp.png",url: "https://www.whatsapp.com/"),
    BottomModel(name: "Instagram",image: "assets/image/instagram.webp",url: "https://www.instagram.com/?hl=en"),
    BottomModel(name: "Facebook",image: "assets/image/faebook.png",url: "https://www.facebook.com/"),
    BottomModel(name: "Twitter",image: "assets/image/twitter.webp",url: "https://twitter.com/"),
  ];
  List<BottomModel> newsApp = [
    BottomModel(name: "Divya Bhaskar",image: "assets/image/divya.png",url: "https://www.divyabhaskar.co.in/"),
    BottomModel(name: "Aaj Tak",image: "assets/image/aaj tak.png",url: "https://www.aajtak.in/"),
    BottomModel(name: "Zee News",image: "assets/image/z_news.jpg",url: "https://zeenews.india.com/"),
    BottomModel(name: "Google News",image: "assets/image/google_news.png",url: "https://news.google.com/"),
  ];
  List<BottomModel> shoppingApp = [
    BottomModel(name: "Amazon",image: "assets/image/amazon.jpg",url: "https://www.amazon.in/"),
    BottomModel(name: "FlipKart",image: "assets/image/flipkard.jpg",url: "https://www.flipkart.com/"),
    BottomModel(name: "Meesho",image: "assets/image/Meesho.webp",url: "https://www.meesho.com/"),
    BottomModel(name: "Shopsy",image: "assets/image/shopsy.jpg",url: "https://www.shopsy.in/"),
  ];
  List<BottomModel> SelectApp = [];


  //Only Function's
  void ChangeIndex(inde)
  {
    index = inde;
    notifyListeners();
  }
  void ChangeIndex2(inde,select)
  {
    index2 = inde;
    SelectApp = select;
    notifyListeners();
  }
  void ChnageController(controller)
  {
    inAppWebViewController = controller;
    notifyListeners();
  }
  void ChnageProgress(prg)
  {
    progress = prg;
    print("================>>>>>>>>>> ======= $progress");
    notifyListeners();
  }
  void ChnageProgress2(prg)
  {
    progress2 = prg;
    print("================>>>>>>>>>> ======= $progress2");
    notifyListeners();
  }
  void LoadUrl(value)
  {
    inAppWebViewController!.loadUrl(
        urlRequest: URLRequest(
            url: Uri.parse("https://www.google.com/search?q=$value")
        )
    );
  }
}