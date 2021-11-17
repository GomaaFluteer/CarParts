import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';







class Carousel extends StatefulWidget {
  final List img;
 // final String titles;
  const Carousel({Key key, this.img,}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List empty = [
    "https://www.creativeegypt.org/assets/images/delivery/delivery.jpg",
    "https://media-exp1.licdn.com/dms/image/C4E1BAQGGd1ctYngoJQ/com"
        "pany-background_10000/0/1541668074232?e=2159024400&v=beta&t=7Rn"
        "uezLlbg4C4MnC-dlkKHSlhllY-3BOh5rHRDADV2Q",
    "https://www.creativeegypt.org/assets/images/delivery/delivery.jpg",
    "https://media-exp1.licdn.com/dms/image/C4E1BAQGGd1ctYngoJQ/com"
        "pany-background_10000/0/1541668074232?e=2159024400&v=beta&t=7Rn"
        "uezLlbg4C4MnC-dlkKHSlhllY-3BOh5rHRDADV2Q",
    "https://www.creativeegypt.org/assets/images/delivery/delivery.jpg",
    "https://media-exp1.licdn.com/dms/image/C4E1BAQGGd1ctYngoJQ/com"
        "pany-background_10000/0/1541668074232?e=2159024400&v=beta&t=7Rn"
        "uezLlbg4C4MnC-dlkKHSlhllY-3BOh5rHRDADV2Q",

  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 5,
          viewportFraction: 0.97,
          aspectRatio: 2.0,
          autoPlay: true,
          initialPage: 1,
          reverse: true,
          enlargeCenterPage: true,
          autoPlayInterval: Duration(seconds: 3),
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 400),
        ),
        items: widget.img.isEmpty
            ? empty.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 5,

                    decoration: BoxDecoration(
                        //border:    Border.all(color: Colors.blueAccent,width: 2),
                      borderRadius: BorderRadius.circular(5),




                          image: DecorationImage(
                            image: NetworkImage(url),
                            fit: BoxFit.fill,

                      )
                    ),



                  );
                },
              ).toList()

            : widget.img.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                    decoration:BoxDecoration(

                        border: Border.all(color: Colors.blueAccent,width: 2)


                    ) ,
                  child: ClipRRect(

                   borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Image.network(
                  url,
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                  ),
                  ),
                  );
                },
              ).toList());
  }


}
