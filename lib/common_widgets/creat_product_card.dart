import 'package:auto_parts/utilities/text_style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int productId;
  final String companyName, carType, productName, productImage;
  final double productCoast;
  final Function onTap;
  const ProductCard(
      {Key key,
      this.productId,
      this.carType,
      this.companyName,
      this.productCoast,
      this.productName,
      this.productImage,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: productId.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
            Positioned(
              top: 0,
              left: 0,
              bottom: 20,
              child: Hero(
                tag: '$productId',
                child: Container(

                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  // image is square but we add extra 20 + 20 padding thats why width is 200
                  width: 200,
                  child: Image.asset(
                    productImage,
                    fit: BoxFit.cover,

                  ),
                ),
              ),
            ),
            // Product title and price
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 136,
                // our image take 200 width, thats why we set out total width - 200
                width: size.width - 200,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "اسم الشركه : ",
                            style: BlackTitle.display5(context),
                          ),
                          Text(
                            companyName,
                            style: BlueTitle.display5(context),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "نوع السياره  : ",
                            style: BlackTitle.display5(context),
                          ),
                          Text(
                            carType,
                            style: BlueTitle.display5(context),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "اسم المنتج  : ",
                            style: BlackTitle.display5(context),
                          ),
                          Text(
                            productName,
                            style: BlueTitle.display5(context),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5, // 30 padding
                          vertical: kDefaultPadding / 4, // 5 top and bottom
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                        ),
                        child: Text(
                          "\$$productCoast",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
