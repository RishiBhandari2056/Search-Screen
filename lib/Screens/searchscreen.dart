// import 'package:customerscreen/Widget/myWrap.dart';
import 'package:customerscreen/Widget/Recommendations.dart';
import 'package:customerscreen/Widget/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> recentSearches = [
    'Pizza',
    'Mutton Mo:Mo',
    'Choco Waffle',
    'Chicken Biryani',
  ];
  final List<String> trendingTag = [
    'Mo:Mo',
    'Vegan',
    'Bubble Tea',
    'Waffles',
    'Spicy Foods',
    'Cake',
    'Salads',
    'Birayni',
    'Mixed Birayni-Hydrabadi Special'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 60,
                    color: Colors.green,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          alignment: Alignment.center,
                          height: 28,
                          width: 302,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[300],
                          ),
                          child: TextFormField(
                            autofocus: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search for foods and drinks",
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.normal)),
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Text("Recent Searches",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold)),
                ),
                Wrap(
                  children: [
                    for (var items in recentSearches)
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                          left: 15,
                        ),
                        // margin: EdgeInsets.only(
                        //     left: 6.0, right: 6.0, bottom: 6.0, top: 6.0),
                        height: 26.0,
                        // constraints: BoxConstraints(
                        //   maxWidth: MediaQuery.of(context).size.width * 0.7,
                        // ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              items,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w200),
                            ),
                            VerticalDivider(
                              color: Colors.grey.shade200,
                              width: 2.0,
                              thickness: 1.0,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.clear,
                                  size: 15,
                                ),
                                onPressed: () {
                                  setState(() {
                                    recentSearches.removeAt(0);
                                  });
                                })
                          ],
                        ),
                      )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Text("Trending tags",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold)),
                ),
                Wrap(
                  children: [
                    for (var items in trendingTag)
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 15, right: 15),
                        // margin: EdgeInsets.only(
                        //     left: 6.0, right: 6.0, bottom: 6.0, top: 6.0),
                        height: 26.0,
                        // constraints: BoxConstraints(
                        //   maxWidth: MediaQuery.of(context).size.width * 0.7,
                        // ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // SvgPicture.asset(
                            //   'image/fire.svg',
                            //   height: 20.0,
                            //   width: 20.0,
                            // ),
                            Text(
                              items,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
                Recommended(),
                Offer()
              ],
            ),
          ),
        ));
  }
}
