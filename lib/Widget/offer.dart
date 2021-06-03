import 'package:customerscreen/model/fooddetails.dart';
import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  final List<FoodDetails> recommend = [
    FoodDetails(
        name: "Dum Biryani",
        image:
            "https://st.depositphotos.com/3147737/4962/i/950/depositphotos_49622201-stock-photo-hyderabadi-biryani-a-popular-chicken.jpg",
        description: "Get 2 for Rs.200"),
    FoodDetails(
        name: "C.Momo",
        image:
            "https://image.shutterstock.com/image-photo/chicken-momo-served-wooden-box-260nw-1257879133.jpg",
        description: "20% OFF today"),
    FoodDetails(
        name: "BlueBerry Delight",
        image:
            "https://images.all-free-download.com/images/graphiclarge/cake_197698.jpg",
        description: "Get 88 for Rs.100"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            child: Text(
              'Offers For You',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            )),
        SizedBox(
          height: 220,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 15, right: 15),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: recommend.length,
            itemBuilder: (context, i) {
              return Container(
                margin: EdgeInsets.only(right: 8, top: 8),
                width: MediaQuery.of(context).size.width * 0.50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Card(
                  child: Stack(
                    children: [
                      Image.network(
                        recommend[i].image,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                      ),
                      // Align(
                      //     alignment: Alignment.topRight,
                      //     child: Row(
                      //       mainAxisSize: MainAxisSize.min,
                      //       children: [
                      //         Icon(Icons.favorite_border,
                      //             size: 30, color: Colors.white),
                      //         SizedBox(width: 2),
                      //         // Text(bookmarkBloc.count.toString())
                      //       ],
                      //     )),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0xff30B700),
                            ),
                            child: Text(
                              recommend[i].description,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(15),
                              // margin: EdgeInsetsDirectional.only(start: 10),
                              height: 10,
                              width: 10,
                              color: Colors.white,
                              child: Icon(Icons.circle,
                                  color: Colors.black, size: 7),
                              // child: Container(
                              //   height: 0.5,
                              //   width: 1,
                              //   decoration: BoxDecoration(
                              //       color: Colors.green,
                              //       shape: BoxShape.circle),
                              // ),
                            ),
                            Text(recommend[i].name,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
