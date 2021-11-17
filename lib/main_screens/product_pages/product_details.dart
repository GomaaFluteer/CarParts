import 'package:auto_parts/common_widgets/creat_button.dart';
import 'package:auto_parts/local_data/local_data.dart';
import 'package:auto_parts/main_screens/product_pages/cart_screen.dart';
import 'package:auto_parts/models/car_model.dart';
import 'package:auto_parts/models/product_model.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetails extends StatefulWidget {
  static const route = "ProductDetails";
  final CarModel carModel;

  ProductDetails({Key key, this.carModel});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  DatabaseHelper dataBaseHelper;
  int numberOfItems=1;
  @override
  void initState() {
    dataBaseHelper = DatabaseHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'Back'.toUpperCase(),
          style: BlueTitle.display5(context),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
              child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.phone_enabled,
                                color: mainColor,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "اتصل بنا علي  :  ",
                                  style: BlackTitle.display5(context),
                                ),
                                Text(
                                  widget.carModel.companyPhone,
                                  style: BlueTitle.display5(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Counter(
                                increase: (){
                                  setState(() {
                                    numberOfItems ++;
                                  });
                                },
                                decrease: (){
                              while(numberOfItems>1){

                                setState(() {
                                  numberOfItems--;
                                });
                              }


                                },
                                counter: numberOfItems,
                              )
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 20),

                                child: Center(
                                  child: Hero(
                                    tag: '${widget.carModel.id}',
                                    child: ProductPoster(
                                      size: size,
                                      image: widget.carModel.productImage,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "اسم الشركه : ",
                              style: BlackTitle.display5(context),
                            ),
                            Text(
                              widget.carModel.companyName,
                              style: BlueTitle.display5(context),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "نوع السياره  : ",
                              style: BlackTitle.display5(context),
                            ),
                            Text(
                              widget.carModel.carType,
                              style: BlueTitle.display5(context),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "اسم المنتج  : ",
                              style: BlackTitle.display5(context),
                            ),
                            Text(
                              widget.carModel.productName,
                              style: BlueTitle.display5(context),
                            ),
                          ],
                        ),
                        SizedBox(height: kDefaultPadding),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  CreatButton(
                    topMargin: 14,
                    labelStyle: GoldLabel.display5(context),
                    height: 48,
                    width: 297,
                    color: Colors.white,
                    label: '\$  ${widget.carModel.productCoast} : coast',
                    onTap: () {},
                  ),
                  InkWell(
                    onTap: () async {
                      await dataBaseHelper
                          .saveProduct(ProductModel(
                        widget.carModel.companyPhone,
                        widget.carModel.productName,
                        widget.carModel.productImage,
                        widget.carModel.carType,
                        widget.carModel.companyPhone,
                        widget.carModel.productCoast,
                          numberOfItems
                      ))
                          .then((_) {
                        Navigator.pushNamed(context, CartScreen.route);
                      }); //then
                    },
                    child: Container(
                      height: 48,
                      width: 297,
                      margin: EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                        color: Color(0xFFFCBF1E),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.shopping_cart,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Add To Cart",
                            style: WhiteTitle.display5(context),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
class Counter extends StatelessWidget {
final int counter;
final Function increase,decrease;

  const Counter({Key key, this.counter, this.increase, this.decrease}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // alignment: Alignment.center,
        height: size.width * 0.75,
        width: 25,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 3),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              child: IconButton(
                icon: Icon(Icons.add,color: Colors.orange,),
                onPressed: increase,
              ),
            ),

            Text(counter.toString(),style: GoldLabel.display5(context),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 3),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.minus,color: Colors.orange,),
                onPressed: decrease,
              ),
            ),
          ],)


    );
  }
}

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      // the height of this container is 80% of our width
      height: size.width * 0.8,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              // color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
