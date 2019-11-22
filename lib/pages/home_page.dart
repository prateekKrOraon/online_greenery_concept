import 'package:flutter/material.dart';

import 'plant_details_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var greenColor = Color(0xff32a05f);
  var darkGreenColor = Color(0xff279152);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal:35),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildProductDes(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15,),
                  Text(
                    'Planting',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildDetailsRow(
                        context: context,
                        value: '250',
                        unit: 'ml',
                        unitName: 'water',
                      ),
                      _buildDetailsRow(
                        context: context,
                        value: '18',
                        unit: '°C',
                        unitName: 'Sunshine',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailsRow({BuildContext context, String value, String unit, String unitName}){
    return Container(
      width: MediaQuery.of(context).size.width/2-50,
      height: 90,
      decoration: BoxDecoration(
          color: darkGreenColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                value,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 5),
              Text(
                unit,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 5),
          Text(
            unitName,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildProductDes(){
    return Expanded(
      flex: 4,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 300,
                child: Text(
                  'Fiddle Leaf Fig Topiary',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '10" Nursery Pot',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '\$',
                    style: TextStyle(
                      fontSize: 20,
                      color: darkGreenColor,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '85',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: darkGreenColor,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    backgroundColor: darkGreenColor,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      width: 250,
                      alignment: Alignment.bottomCenter,
                      child: Image.network(
                        'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomCenter,
                      )
                  )
                ],
              ),
              SizedBox(height: 35,),
            ],
          ),
        ),
      ),
    );
  }
}
