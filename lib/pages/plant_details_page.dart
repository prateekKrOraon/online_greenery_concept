import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget{
  @override
  _DetailsPageState createState() {
    return _DetailsPageState();
  }
}

class _DetailsPageState extends State<DetailsPage>{

  var greenColor = Color(0xff32a05f);
  var darkGreenColor = Color(0xff279152);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greenColor,
        leading: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        title: Text(
          'Greenary Store',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 45),
        child: Column(
          children: <Widget>[
            Container(
              height: 180,
              alignment: Alignment.centerLeft,
              child: Text(
                'Product Overview',
                style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildDetailRow(Icons.star, 'Water', 'every 7 days'),
                  _buildDetailRow(Icons.ac_unit, 'Humidity', 'up to 82%'),
                  _buildDetailRow(Icons.straighten, 'Size', '38"-48" tall'),
                ],
              ),
            ),
            _buildActionButton('Delivery Information', Icons.add),
            SizedBox(height: 30,),
            _buildActionButton('Return Policy', Icons.add),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2-40,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String name, String detail) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white
            ),
          ),
          Text(
            detail,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String text, IconData icon) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: darkGreenColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomLeft: Radius.circular(35),
        ),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 30,),
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 30,),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 27
            ),
          ),
        ],
      ),
    );
  }
}