import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/constant.dart';
import 'searchBox.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StateAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchBox(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryItem(
                    title: "Combo Meal",
                    isActive: true,
                  ),
                  CategoryItem(
                    title: "Chicken",
                    press: (){

                    },
                  ),
                  CategoryItem(
                    title: "Beverages",
                    press: (){},
                  ),
                  CategoryItem(
                    title: "Snacks & Sides",
                    press: (){},
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Padding(
               padding: EdgeInsets.all(20),
               child:  Row(
                 children: [
                   MealItem(
                     svgPath: 'images/icons/burger_beer.svg',
                     title: "Burger & Beer",
                     shopName: "MacDonal's",
                     press: (){
                       Navigator.of(context).pushNamed('/product');
                     },
                   ),
                   MealItem(
                     svgPath: 'images/icons/chinese_noodles.svg',
                     title: "Chinese & Noodles",
                     shopName: "Wendys",
                   ),
                   MealItem(
                     svgPath: 'images/icons/burger_beer.svg',
                     title: "Burger & Beer",
                     shopName: "MacDonal's",
                   ),
                   MealItem(
                     svgPath: 'images/icons/chinese_noodles.svg',
                     title: "Chinese & Noodles",
                     shopName: "Wendys",
                   ),
                 ],
               ),
             ),
           ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Discounts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      fontSize: 17
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/img/beyond-meat-mcdonalds.png')
                      )
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFF961F).withOpacity(.7),
                            kPrimaryColor.withOpacity(.7)
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: SvgPicture.asset('images/icons/macdonalds.svg')),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(text:'Get Discount of \n'),
                                    TextSpan(text:"-30% \n" ,style: TextStyle(fontSize: 43)),
                                    TextSpan(text:"at MacDonald's on your first order & Instand Cashback")
                                  ]
                              ),
                            )
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Offers",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      fontSize: 17
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/img/beyond-meat-mcdonalds.png')
                      )
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFF961F).withOpacity(.7),
                            kPrimaryColor.withOpacity(.7)
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: SvgPicture.asset('images/icons/macdonalds.svg')),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(text:'Get Offer of \n'),
                                    TextSpan(text:"30% \n" ,style: TextStyle(fontSize: 43)),
                                    TextSpan(text:"at MacDonald's on your first order & Instand Cashback")
                                  ]
                              ),
                            )
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          boxShadow:[
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(.11)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: SvgPicture.asset('images/icons/home.svg'),
                onPressed: (){}
                ),
            IconButton(
                icon: SvgPicture.asset('images/icons/Following.svg'),
                onPressed: (){}
                ),
            IconButton(
                icon: SvgPicture.asset('images/icons/Glyph.svg'),
                onPressed: (){}
                ),
            IconButton(
                icon: SvgPicture.asset('images/icons/person.svg'),
                onPressed: (){}
                ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  CategoryItem({
    this.title,
    this.press,
    this.isActive =false
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          children: [
            Text(title,
              style: isActive ? TextStyle(
                  color: kSecondaryColor,
                  fontWeight: FontWeight.bold
              ): TextStyle(fontSize: 13),
            ),
            if(isActive)
            Container(
              height: 3,
              width: 22,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final String svgPath;
  final String title;
  final String shopName;
  final Function press;

  const MealItem({Key key,@required this.svgPath,@required this.title,@required this.shopName, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color(0xFFB0CCE1).withOpacity(.32)
            )
          ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Container(
            width: size.width * .4,
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.13),
                      shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(svgPath, width: size.width*.2,height: size.height*.07,),
                ),
                Text(title),
                SizedBox(height: 10,),
                Text(shopName,style: TextStyle(fontSize: 13),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
