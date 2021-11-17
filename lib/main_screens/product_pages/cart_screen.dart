import 'package:auto_parts/common_widgets/creat_Circle_progress.dart';
import 'package:auto_parts/common_widgets/creat_button.dart';
import 'package:auto_parts/main_screens/product_pages/product_screen.dart';
import 'package:auto_parts/models/product_model.dart';
import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static const route = "CartScreen";
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DatabaseHelper dataBaseHelper = DatabaseHelper();
  List<ProductModel> products = [];
  @override
  void initState() {
    super.initState();

    dataBaseHelper.getAllProducts().then((product) {
      print(dataBaseHelper.getAllProducts());
      setState(() {
        product.forEach((element) {
          products.add(ProductModel.fromMap(element));
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xffFAFAFA),
      // ),
      body: products != null
          ? Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(

                child: Column(

                  children: [



                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: CreatButton(
                        topMargin: 14,
                        labelStyle: WhiteBoldTitle.display5(context),
                        height: 60,
                        color: Colors.orange,
                        label: "الاجمالى",
                        onTap: () {
                          showAlertDialog(context);
                        },
                      ),
                    ),

                    ListView.builder(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        shrinkWrap: true,
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.white,
                            margin:
                                EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            elevation: 10,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(
                                //     color: Colors.blueAccent, width: 2)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 40,
                                          backgroundImage: AssetImage(
                                              products[index].productImage),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "اسم الشركه : ${products[index].companyName}",
                                            style: BlueTitle.display5(context),
                                          ),
                                          Text(
                                            "نوع السياره : ${products[index].carType}",
                                            style: BlueTitle.display5(context),
                                          ),
                                          Text(
                                            "اسم المنتج : ${products[index].productName}",
                                            style: BlueTitle.display5(context),
                                          ),
                                          Text(
                                            "سعر المنتج : ${products[index].productCoast}",
                                            style: BlueTitle.display5(context),
                                          ),
                                          Text(
                                            "اتصل بنا علي :  ${products[index].companyPhone}",
                                            style: BlueTitle.display5(context),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        products[index].numberOfItems.toString(),
                                        style: GoldLabel.display5(context),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          size: 30,
                                          color: Colors.orange,
                                        ),
                                        onPressed: () {
                                          dataBaseHelper
                                              .deleteProduct(products[index].id);
                                          setState(() {
                                            products.removeAt(index);
                                          });
                                          print(products.length);
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),


                  ],
                ),
              ))
          : CreatCircleProgressIndicator(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(

        height: 75.0,
        width: 75.0,
        child: FittedBox(
          child: FloatingActionButton(

              elevation: 10.0,
              child: new Icon(Icons.add),
              backgroundColor: Colors.blueAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, ProductsScreen.route);
              }),
        ),
      ),
    ));
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "اجمالي المشتريات",
        textDirection: TextDirection.rtl,
        style: GoldLabel.display5(context),
      ),
      content: Text(
        "${products.map((e) => e.productName)}\n\n${products.map((e) => e.productCoast * e.numberOfItems).toList().reduce((value, element) => value + element)}\$",
        style: TextStyle(fontSize: 25, color: Colors.orange),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
