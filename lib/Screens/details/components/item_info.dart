import 'package:flutter/material.dart';
import 'file:///D:/Flutter/OnlineCode/Welcome-Login-Signup-Page-Flutter-master/lib/Global/constants.dart';
import 'package:flutter_auth/screens/details/components/item_image.dart';
import 'package:flutter_auth/screens/details/components/order_button.dart';
import 'package:flutter_auth/screens/details/components/title_price_rating.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "MacDonalds"),
          TitlePriceRating(
            price: 15,
            numOfReviews: 24,
            rating: 4,
            name: "Cheese Burger",
            author: "huda",
            theDate: "15/10/2020",
            onRatingChanged: (value) {},
          ),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: kPrimaryLightColor,
                      // width: 3.0 --> you can set a custom width too!
                    ),
                    bottom: BorderSide(
                      color: kPrimaryLightColor,
                    ),
                  )),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(children: [
                          Text("Collection:",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          Text("Used",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: kPrimaryColor ))
                        ]),
                      ),
                      Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text("Category:" ,
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                              SizedBox(width: 10),
                              Text("Car",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: kPrimaryColor )),
                            ],
                          )),
                    ],
                  ),
                ],
              )),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
