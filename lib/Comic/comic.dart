import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ComicView extends StatefulWidget {
  const ComicView({super.key});

  @override
  State<ComicView> createState() => _ComicViewState();
}

class _ComicViewState extends State<ComicView> {
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 9,
            child: Container(
              color: Color(0xff5e6e51),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "The Keyboard's Sharp Edge: My Cyberbulling Experience",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "@Author username",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 205, 203, 203),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "The story highlights the pain and trauma of being targeted by online bullies and how it can affect a person's mental and emotional...",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  " 45K",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  " 9.5",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Rate",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 20,
            child: Container(
              color: Color(0xffffffff),
              child: Stack(
                children: <Widget>[
                  PDFView(
                    filePath:
                        'https://www.icrc.org/en/doc/assets/files/other/icrc_battle_villages.pdf',
                    enableSwipe: false,
                    swipeHorizontal: true,
                    autoSpacing: false,
                    pageFling: true,
                    pageSnap: true,
                    defaultPage: currentPage!,
                    fitPolicy: FitPolicy.BOTH,
                    preventLinkNavigation:
                        false, // if set to true the link is handled in flutter
                    onRender: (_pages) {
                      setState(() {
                        pages = _pages;
                        isReady = true;
                      });
                    },
                    onError: (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                      print(error.toString());
                    },
                    onPageError: (page, error) {
                      setState(() {
                        errorMessage = '$page: ${error.toString()}';
                      });
                      print('$page: ${error.toString()}');
                    },
                    onViewCreated: (PDFViewController pdfViewController) {
                      _controller.complete(pdfViewController);
                    },
                    onLinkHandler: (String? uri) {
                      print('goto uri: $uri');
                    },
                    onPageChanged: (int? page, int? total) {
                      print('page change: $page/$total');
                      setState(() {
                        currentPage = page;
                      });
                    },
                  ),
                  errorMessage.isEmpty
                      ? !isReady
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Container()
                      : Center(
                          child: Text(errorMessage),
                        )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffa8b589),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Icon(Icons.favorite,color: Colors.white,),
                        Text(
                          "Favourite",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Icon(Icons.comment,color: Colors.white,),
                        Text(
                          "Comments",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Icon(Icons.settings_sharp,color: Colors.white,),
                        Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
    
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Icon(Icons.menu_book_sharp,color: Colors.white,),
                        Text(
                          "Episodes",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
