import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/constant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(icon: SvgPicture.asset('images/icons/share.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('images/icons/more.svg'), onPressed: (){}),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
                'images/img/burger.png',
              height: size.height * .3,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.location_on,color: kSecondaryColor,),
                          onPressed: (){},
                        ),
                        Text("MacDonald's",style: TextStyle(fontSize: 17),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Cheese Burger",
                                    style: TextStyle(
                                        color: Colors.black54,
                                      fontSize: 20
                                    )
                                ),
                                SizedBox(height:10),
                                Row(
                                  children: [
                                    SmoothStarRating(
                                      borderColor: kPrimaryColor,
                                      rating: 4,
                                    ),
                                    SizedBox(width: 10,),
                                    Text("35 reviews")
                                  ],
                                )
                              ],
                            ),
                          ),
                          ClipPath(
                            clipper: PricerCliper(),
                            child: Container(
                              width: 70,
                              height: 85,
                              alignment: Alignment.center,
                              color: kPrimaryColor,
                              child:Text(
                                '\$ 15',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
                          style: TextStyle(
                            fontSize: 16,
                            wordSpacing: 1.3,
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: size.width * .8,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            print("done");
                          },
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('images/icons/bag.svg'),
                                SizedBox(width: 15,),
                                Text(
                                    "Order Now",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0,size.height - ignoreHeight);
    path.lineTo(size.width / 2 , size.height);
    path.lineTo(size.width , size.height - ignoreHeight);
    path.lineTo(size.width ,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
  
}