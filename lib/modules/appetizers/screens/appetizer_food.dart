import 'package:flutter/material.dart';

class AppetizerFood extends StatefulWidget {
  final String name;
  final List size;
  final List price;
  final String description;
  final String type;
  final String flag;

  const AppetizerFood(
      {Key? key,
      required this.name,
      required this.size,
      required this.price,
      required this.description,
      required this.type,
      required this.flag})
      : super(key: key);

  @override
  _AppetizerFoodState createState() => _AppetizerFoodState();
}

class _AppetizerFoodState extends State<AppetizerFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD TO CART'),
          backgroundColor: Colors.redAccent,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFF4EFEF)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: 250,
              height: 200,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      15.0, // Move to right 10  horizontally
                      15.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Image.asset(
                'assets/images/appetizers/${widget.flag}',
                alignment: Alignment.center,
              ),
            ),
            Container(
              child: getDescription(),
            ),
            Container(
              child: typeCheck(),
            ),
            Container(
              child: addCart(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getDescription() {
    return Container(
      constraints: BoxConstraints(minHeight: 120, maxHeight: 135),
      margin: EdgeInsets.all(10.0),
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              widget.name,
              style: TextStyle(height: 2, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              widget.description,
              style: TextStyle(height: 1.2, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget typeCheck() {
    if (widget.type == 'advanced') {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFECE00)),
                ),
                onPressed: () {},
                child: Text(
                  widget.size[0] + '\n' + widget.price[0],
                  style:
                      TextStyle(height: 1.2, fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFECE00)),
                ),
                onPressed: () {},
                child: Text(
                  widget.size[1] + '\n' + widget.price[1],
                  style:
                      TextStyle(height: 1.2, fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFFECE00)),
                ),
                onPressed: () {},
                child: Text(
                  widget.size[2] + '\n' + widget.price[2],
                  style:
                      TextStyle(height: 1.2, fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: Text(
            widget.price[0],
            style: TextStyle(height: 1.5, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  Widget addCart() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFECE00)),
                    ),
                    onPressed: () {},
                    child: Text(
                      '-',
                      style: TextStyle(
                          height: 1, fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: -12.0,
                        blurRadius: 12.0,
                      )
                    ],
                  ),
                  child: Text(
                    '1',
                    style:
                        TextStyle(height: 1.5, fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFECE00)),
                    ),
                    onPressed: () {},
                    child: Text(
                      '+',
                      style: TextStyle(
                          height: 1, fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 335,
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Add To Cart',
                    style: TextStyle(height: 1, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Add To Cart',
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
